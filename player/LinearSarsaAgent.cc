#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <time.h>
#include "LinearSarsaAgent.h"
#include "LoggerDraw.h"

// If all is well, there should be no mention of anything keepaway- or soccer-
// related in this file. 

extern LoggerDraw LogDraw;

LinearSarsaAgent::LinearSarsaAgent( int numFeatures, int numActions, bool bLearn,
				    double widths[],
				    char *loadWeightsFile, char *saveWeightsFile,
				    int numWeightsFiles, char **loadWeightsFiles ):
  SMDPAgent( numFeatures, numActions )
{
  bLearning = bLearn;

  for ( int i = 0; i < getNumFeatures(); i++ ) {
    tileWidths[ i ] = widths[ i ];
  }

  if ( bLearning && strlen( saveWeightsFile ) > 0 ) {
    strcpy( weightsFile, saveWeightsFile );
    bSaveWeights = true;
  }
  else {
    bSaveWeights = false;
  }

  alpha = 0.125;
  gamma = 1.0;
  lambda = 0.5;
  epsilon = 0.0;
  epsilon_increment = 0.0001;
  minimumTrace = 0.01;

  psi = 1.0;
  v = 0.95;
  tau = 0.0;
  tau_increment = 0.05;

  epochNum = 0;
  lastAction = -1;

  numNonzeroTraces = 0;
  for ( int i = 0; i < RL_MEMORY_SIZE; i++ ) {
    weights[ i ] = 0;
    traces[ i ] = 0;
  }

  srand( (unsigned int) 0 );
  int tmp[ 2 ];
  float tmpf[ 2 ];
  colTab = new collision_table( RL_MEMORY_SIZE, 1 );

  GetTiles( tmp, 1, 1, tmpf, 0 );  // A dummy call to set the hashing table    
  srand( time( NULL ) );

  if ( strlen( loadWeightsFile ) > 0 )
    loadWeights( loadWeightsFile );

  if ( numWeightsFiles > 0 ) {
    loadWeightsPRQL( numWeightsFiles, loadWeightsFiles );
  }

  numberOfPolicies = 1 + numWeightsFiles;

  W = (long double *)malloc( numberOfPolicies * sizeof( long double ) );
  P = (long double *)malloc( numberOfPolicies * sizeof( long double ) );

  for (int i = 0; i < numberOfPolicies; i++)
    W[i] = 0.0;
}

int LinearSarsaAgent::startEpisode( double state[] )
{
  epochNum++;
  stepNum = 0;
  sum_gamma_r_k_h = 0.0;
  decayTraces( 0 );
  loadTiles( state );

  policyToExploit = getPolicyToExploit();

  for ( int a = 0; a < getNumActions(); a++ ) {
    Q[ a ] = computeQ( a );
  }

  lastAction = selectAction();

  char buffer[128];
  sprintf( buffer, "Q[%d] = %.2f", lastAction, Q[lastAction] );
  LogDraw.logText( "Qmax", VecPosition( 25, -30 ),
                   buffer,
                   1, COLOR_BROWN );

  for ( int j = 0; j < numTilings; j++ )
    setTrace( tiles[ lastAction ][ j ], 1.0 );
  return lastAction;
}

int LinearSarsaAgent::step( double reward, double state[] )
{
  stepNum++;
  double delta = reward - Q[ lastAction ];
  loadTiles( state );

  for ( int a = 0; a < getNumActions(); a++ )
    Q[ a ] = computeQ( a );

  lastAction = selectAction(); // TODO: computar Q[] internamente

  char buffer[128];
  sprintf( buffer, "Q[%d] = %.2f", lastAction, Q[lastAction] );
  LogDraw.logText( "Qmax", VecPosition( 25, -30 ),
                   buffer,
                   1, COLOR_BROWN );

  if ( !bLearning )
    return lastAction;

  //char buffer[128];
  sprintf( buffer, "reward: %.2f", reward ); 
  LogDraw.logText( "reward", VecPosition( 25, 30 ),
		   buffer,
		   1, COLOR_NAVY );

  delta += Q[ lastAction ];
  updateWeights( delta );

  Q[ lastAction ] = computeQ( lastAction ); // need to redo because weights changed

  decayTraces( gamma * lambda );

  for ( int a = 0; a < getNumActions(); a++ ) {  //clear other than F[a]
    if ( a != lastAction ) {
      for ( int j = 0; j < numTilings; j++ )
        clearTrace( tiles[ a ][ j ] );
    }
  }

  for ( int j = 0; j < numTilings; j++ )      //replace/set traces F[a]
    setTrace( tiles[ lastAction ][ j ], 1.0 );

  psi = psi * v;
  sum_gamma_r_k_h += pow ( gamma, stepNum ) * reward;

  return lastAction;
}

void LinearSarsaAgent::endEpisode( double reward )
{
  if ( bLearning && lastAction != -1 ) { /* otherwise we never ran on this episode */
    char buffer[128];
    sprintf( buffer, "reward: %.2f", reward ); 
    LogDraw.logText( "reward", VecPosition( 25, 30 ),
		     buffer,
		     1, COLOR_NAVY );

    /* finishing up the last episode */
    /* assuming gamma = 1  -- if not,error*/
    if ( gamma != 1.0)
      cerr << "We're assuming gamma's 1" << endl;
    double delta = reward - Q[ lastAction ];
    updateWeights( delta );
  }
  if ( bLearning && bSaveWeights && rand() % 200 == 0 ) {
    saveWeights( weightsFile );
  }
  lastAction = -1;
  tau += tau_increment;
  epsilon += epsilon_increment;

  W[policyToExploit] = ( ( epochNum - 1 ) * W[policyToExploit] )  +  sum_gamma_r_k_h;
  W[policyToExploit] = W[policyToExploit] / epochNum;
}

int LinearSarsaAgent::selectAction()
{
  int action;

  if ( numberOfPolicies == 1 ) { // learning from scratch, no reuse
    // Epsilon-greedy
    if ( bLearning && drand48() < epsilon ) {     /* epsilon here
						     means how greedy
						     the agent is */
      action = argmaxQ();
    }
    else{
      action = rand() % getNumActions();
    }

    return action;
  }
  else {
    // PRQL - will eventually reuse policies
    if ( policyToExploit == 0 ) {
      // fully greedy
      action = argmaxQ();
    }
    else {
      if ( drand48() < psi ) {
	// exploit past policy
	for ( int a = 0; a < getNumActions(); a++ )
	  Q[ a ] = computeQ_PRQL( a );

	action = argmaxQ();

	for ( int a = 0; a < getNumActions(); a++ ) /* return Q[] to
						       the correct
						       values */
	  Q[ a ] = computeQ( a );
      }
      else {
 	if ( drand48() < 1 - psi ) { // greedy
	  // exploit 'new' policy (the one being learned)
	  action = argmaxQ();
	}
	else {
	  // explore
	  action = rand() % getNumActions();
	}
      }
    }
  }
  return action;
}

bool LinearSarsaAgent::loadWeights( char *filename )
{
  cout << "Loading weights from " << filename << endl;
  int file = open( filename, O_RDONLY );
  read( file, (char *) weights, RL_MEMORY_SIZE * sizeof(double) );
  colTab->restore( file );
  close( file );
  cout << "...done" << endl;
  return true;
}

bool LinearSarsaAgent::loadWeightsPRQL( int numWeightsFiles, char **filenames )
{
  weightsPRQL = (double **)malloc( numWeightsFiles * sizeof ( double * ) );
  for (int i = 0; i < numWeightsFiles; i++) {
    weightsPRQL[i] = (double *)malloc( RL_MEMORY_SIZE * sizeof ( double ) );
    cout << "PRQL - Loading weights from " << filenames[i] << endl;
    int file = open( filenames[i], O_RDONLY );
    read( file, (char *) weightsPRQL[i], RL_MEMORY_SIZE * sizeof(double) );
    close( file );
    cout << "...done" << endl;
  }
  return true;
}

bool LinearSarsaAgent::saveWeights( char *filename )
{
  int file = open( filename, O_CREAT | O_WRONLY, 0664 );
  write( file, (char *) weights, RL_MEMORY_SIZE * sizeof(double) );
  colTab->save( file );
  close( file );
  return true;
}

// Compute an action value from current F and theta    
double LinearSarsaAgent::computeQ( int a )
{
  double q = 0;
  for ( int j = 0; j < numTilings; j++ )
    q += weights[ tiles[ a ][ j ] ];

  return q;
}

// Compute an action value from current F and theta    
double LinearSarsaAgent::computeQ_PRQL( int a )
{
  double q = 0;
  for ( int j = 0; j < numTilings; j++ )
    q += weightsPRQL[policyToExploit-1][ tiles[ a ][ j ] ];

  return q;
}

// Returns index (action) of largest entry in Q array, breaking ties randomly 
int LinearSarsaAgent::argmaxQ()
{
  int bestAction = 0;
  double bestValue = Q[ bestAction ];
  int numTies = 0;
  for ( int a = bestAction + 1; a < getNumActions(); a++ ) {
    double value = Q[ a ];
    if ( value > bestValue ) {
      bestValue = value;
      bestAction = a;
    }
    else if ( value == bestValue ) {
      numTies++;
      if ( rand() % ( numTies + 1 ) == 0 ) {
	bestValue = value;
	bestAction = a;
      }
    }
  }

  return bestAction;
}

void LinearSarsaAgent::updateWeights( double delta )
{
  double tmp = delta * alpha / numTilings;
  for ( int i = 0; i < numNonzeroTraces; i++ ) {
    int f = nonzeroTraces[ i ];
    if ( f > RL_MEMORY_SIZE || f < 0 )
      cerr << "f is too big or too small!!" << f << endl;
    weights[ f ] += tmp * traces[ f ];
  }
}

void LinearSarsaAgent::loadTiles( double state[] )
{
  int tilingsPerGroup = 32;  /* num tilings per tiling group */
  numTilings = 0;

  /* These are the 'tiling groups'  --  play here with representations */
  /* One tiling for each state variable */
  for ( int v = 0; v < getNumFeatures(); v++ ) {
    for ( int a = 0; a < getNumActions(); a++ ) {
      GetTiles1( &(tiles[ a ][ numTilings ]), tilingsPerGroup, colTab,
		 state[ v ] / tileWidths[ v ], a , v );
    }  
    numTilings += tilingsPerGroup;
  }
  if ( numTilings > RL_MAX_NUM_TILINGS )
    cerr << "TOO MANY TILINGS! " << numTilings << endl;
}


// Clear any trace for feature f      
void LinearSarsaAgent::clearTrace( int f)
{
  if ( f > RL_MEMORY_SIZE || f < 0 )
    cerr << "ClearTrace: f out of range " << f << endl;
  if ( traces[ f ] != 0 )
    clearExistentTrace( f, nonzeroTracesInverse[ f ] );
}

// Clear the trace for feature f at location loc in the list of nonzero traces 
void LinearSarsaAgent::clearExistentTrace( int f, int loc )
{
  if ( f > RL_MEMORY_SIZE || f < 0 )
    cerr << "ClearExistentTrace: f out of range " << f << endl;
  traces[ f ] = 0.0;
  numNonzeroTraces--;
  nonzeroTraces[ loc ] = nonzeroTraces[ numNonzeroTraces ];
  nonzeroTracesInverse[ nonzeroTraces[ loc ] ] = loc;
}

// Decays all the (nonzero) traces by decay_rate, removing those below minimum_trace 
void LinearSarsaAgent::decayTraces( double decayRate )
{
  int f;
  for ( int loc = numNonzeroTraces - 1; loc >= 0; loc-- ) {
    f = nonzeroTraces[ loc ];
    if ( f > RL_MEMORY_SIZE || f < 0 )
      cerr << "DecayTraces: f out of range " << f << endl;
    traces[ f ] *= decayRate;
    if ( traces[ f ] < minimumTrace )
      clearExistentTrace( f, loc );
  }
}

// Set the trace for feature f to the given value, which must be positive   
void LinearSarsaAgent::setTrace( int f, float newTraceValue )
{
  if ( f > RL_MEMORY_SIZE || f < 0 )
    cerr << "SetTraces: f out of range " << f << endl;
  if ( traces[ f ] >= minimumTrace )
    traces[ f ] = newTraceValue;         // trace already exists              
  else {
    while ( numNonzeroTraces >= RL_MAX_NONZERO_TRACES )
      increaseMinTrace(); // ensure room for new trace              
    traces[ f ] = newTraceValue;
    nonzeroTraces[ numNonzeroTraces ] = f;
    nonzeroTracesInverse[ f ] = numNonzeroTraces;
    numNonzeroTraces++;
  }
}

// Try to make room for more traces by incrementing minimum_trace by 10%,
// culling any traces that fall below the new minimum                      
void LinearSarsaAgent::increaseMinTrace()
{
  minimumTrace *= 1.1;
  cerr << "Changing minimum_trace to " << minimumTrace << endl;
  for ( int loc = numNonzeroTraces - 1; loc >= 0; loc-- ) { // necessary to loop downwards    
    int f = nonzeroTraces[ loc ];
    if ( traces[ f ] < minimumTrace )
      clearExistentTrace( f, loc );
  }
}

void LinearSarsaAgent::setParams(int iCutoffEpisodes, int iStopLearningEpisodes)
{
  /* set learning parameters */
}

int LinearSarsaAgent::getPolicyToExploit()
{
  computeP();
  double p = drand48();

  for ( int i = 0; i < numberOfPolicies; i++ ) {
    std::cout << "getPolicyToExploit: "
	      << "i: " << i << " "
	      << "p: " << p << " "
	      << "P[" << i << "]: " << P[i] << " "
	      << std::endl;

    if ( p < P[i] )
      return i;
  }

  return -1;
}

void LinearSarsaAgent::computeP()
{
  long double *powers;
  long double sum_powers;
  long double K = 0; // subtracted from exponents to prevent overflow

  powers = (long double *)malloc( numberOfPolicies * sizeof( long double ) );
  sum_powers = 0.0;
  std::cout << std::endl;

  // Obtain constant to subtract from exponents
  K = 0;
  for ( int i = 0; i < numberOfPolicies; i++ ) {
    if ( tau * W[i] > K )
      K = tau * W[i];

  for ( int i = 0; i < numberOfPolicies; i++ ) {
    powers[i] = pow( M_E, tau * W[i]  - K);

    std::cout << "computeP(): "
	      << "tau: " << tau << " "
	      << "W[" << i << "]: " << W[i] << " "
	      << "powers[" << i << "]: " << powers[i] << " "
	      << "epochNum: " << epochNum << " "
	      << std::endl;

    sum_powers += powers[i];
  }

  P = (long double *)malloc( numberOfPolicies * sizeof( long double ) );

  P[0] = powers[0] / sum_powers;
  for ( int i = 1; i < numberOfPolicies - 1; i++ ) {
    // cummulative sum
    P[i] = ( powers[i] / sum_powers ) + powers[i-1];
  }
  P[numberOfPolicies - 1] = 1.0;
}
