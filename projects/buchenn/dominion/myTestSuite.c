//
// Created by noah2017 on 2/10/19.
//

/***************************************************************************
 * Name: myTestSuite
 * Author: Noah Buchen
 * Assignment 3: unit testing
 * Description: Created for OSU postbacc CS362. This testsuite will begin
 * with unit tests of four functions of the dominion.c code, shuffle, drawCard,
 * discardCard, and fullDeckCount. It will also cover four card effects that
 * I refactored and then bugged up in Assignment 2. Code structure includes
 * a custom assert function that will maintain code execution for passing
 * or failing tests.
***************************************************************************/

#include <memory.h>
#include <stdio.h>
#include "myTestSuite.h"
#include "dominion.h"
#include "dominion_helpers.h"



void testDriverDominion(int numPlayers, int testCase){

	struct gameState unmutable;
	struct gameState mutable;
	int testResult;

	int i;

	int start = -1;
	//need more flexibility in card declaration
	int k[10] = {adventurer, gardens, embargo, village, minion, salvager, cutpurse,
				 sea_hag, tribute, smithy};
	//Intialize unmutable gamestate
	memset(&unmutable, 'z', sizeof(struct gameState));
	initializeGame(numPlayers, k, 30, &unmutable);

	//copy to mutable gamestate
	memcpy (&mutable, &unmutable, sizeof(struct gameState));
	testResult = memcmp(&mutable, &unmutable, sizeof(struct gameState));
	asserttrue(testResult);

	testResult = myShuffleTest(2, &mutable, &unmutable);
	if(testResult){
		printf("**COMPLETED TESTING: shuffle**");
	}
	else{
		printf("**TEST SUITE ERROR: shuffle**");
	}


}

int main(){

	//Unit testing

	//TODO refactor into reading from function list a.k.a practice function pointers in C
	// https://stackoverflow.com/questions/840501/how-do-function-pointers-in-c-work/840703#840703
	//test for 2 or 3 players
	for (int numPlayers = 2; numPlayers < 4 ; ++numPlayers) {

		testDriverDominion(numPlayers, SHUFFLE);
		//testDriverDominion(DRAWCARD);
		//testDriverDominion(DISCARDCARD);
		//testDriverDominion(FULLDECKCOUNT);
		//testDriverDominion(SMITHY);
		//testDriverDominion(ADVENTURER);
		//testDriverDominion(EMBARGO);
		//testDriverDominion(SALVAGER);
	}
	return 0;
}