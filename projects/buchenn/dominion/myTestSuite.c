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

/***************************************************************************
 * Name: insertSort
 * Description: This function will use the insertSort algorithm to sort an
 * array of integers of give size.
***************************************************************************/
void insertSort(int* theArray, int size) {

	//sort the array
	for (int i = 0; i < size; ++i) {
		int temp = theArray[i];
		int j = i-1;
		while (temp < theArray[j] && j >= 0){
			theArray[j + 1] = theArray [j];
			j--;
		}
		theArray[j+1] = temp;

	}


}

void testDriverDominion(int numPlayers, int testCase){

	struct gameState unmutable;
	struct gameState mutable;
	int testResult;

	int i;

	int start = -1;
	//need more flexibility in card declaration
	int k[10] = {adventurer, gardens, embargo, village, minion, salvager, cutpurse,
				 sea_hag, tribute, smithy};

	//Intialize mutable gamestate
	memset(&mutable, 'z', sizeof(struct gameState));
	initializeGame(numPlayers, k, 30, &mutable);

	//copy to unmutable gamestate
	memcpy (&unmutable, &mutable, sizeof(struct gameState));
	printf("Testing Initializing and memcpy\n");
	testResult = memcmp(&mutable, &unmutable, sizeof(struct gameState));
	printf("Memcmp results = %d ", testResult);
	asserttrue((testResult == 0));

	//print gamestate guide
	printf ("Rough guide to locations in structure:\n");
	printf ("0: numPlayers\n");
	printf ("%ld: supplyCount[0]\n", ((long)&(mutable.supplyCount[0]))-((long)&mutable));
	printf ("%ld: embargoTokens[0]\n", ((long)&(mutable.embargoTokens[0]))-((long)&mutable));
	printf ("%ld: hand[0][0]\n", ((long)&(mutable.hand[0][0]))-(long)(&mutable));
	printf ("%ld: deck[0][0]\n", ((long)&(mutable.deck[0][0]))-(long)(&mutable));
	printf ("%ld: discard[0][0]\n", ((long)&(mutable.discard[0][0]))-(long)(&mutable));
	printf ("%ld: playerCards[0]\n", ((long)&(mutable.playedCards[0]))-(long)(&mutable));

	for (i = 0; i < sizeof(struct gameState); i++) {
		if (((char*)&mutable)[i] == 'z') {
			if (start == -1) {
				start = i;
			}
		} else{
			if (start != -1) {
				if (start == (i-1)) {
					printf ("Byte %d uninitialized.\n", start);
				} else {
					printf ("Bytes %d-%d uninitialized.\n", start, i-1);
				}
				start = -1;
			}
		}
	}

	if (start != -1) {
		if (start == (i-1)) {
			printf ("Byte %d uninitialized.\n", start);
		} else {
			printf ("Bytes %d-%d uninitialized.\n", start, i-1);
		}
	}
	switch(testCase) {
		case SHUFFLE: {
			//test shuffle
			testResult = myShuffleTest(numPlayers, &mutable, &unmutable);
			if (testResult) {
				printf("**COMPLETED TESTING: shuffle**\n");
			} else {
				printf("**TEST SUITE ERROR: shuffle**\n");
			}
		}
			break;
		case SMITHY: {
			testResult = playCardTestSmithy(numPlayers, &mutable, &unmutable);
			if (testResult) {
				printf("**COMPLETED TESTING: Smithy**\n");
			} else {
				printf("**TEST SUITE ERROR: Smithy**\n");
			}
		}
			break;
		case ADVENTURER: {
			testResult = playCardTestAdventurer(numPlayers, &mutable, &unmutable);
			if (testResult) {
				printf("**COMPLETED TESTING: Adventurer**\n");
			} else {
				printf("**TEST SUITE ERROR: Adventurer**\n");
			}
		}
			break;
	}
}

int main(){

	//Unit testing

	//TODO refactor into reading from function list a.k.a practice function pointers in C
	// https://stackoverflow.com/questions/840501/how-do-function-pointers-in-c-work/840703#840703
	//test for 2 or 3 players
	//for (int numPlayers = 2; numPlayers < 4 ; ++numPlayers) {
	int numPlayers = 2;
		testDriverDominion(numPlayers, SHUFFLE);
		//testDriverDominion(DRAWCARD);
		//testDriverDominion(DISCARDCARD);
		//testDriverDominion(FULLDECKCOUNT);
		testDriverDominion(numPlayers, SMITHY);
		testDriverDominion(numPlayers, ADVENTURER);
		//testDriverDominion(EMBARGO);
		//testDriverDominion(SALVAGER);
	//}
	return 0;
}