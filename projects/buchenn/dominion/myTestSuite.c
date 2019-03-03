//
// Created by noah2017 on 2/10/19.
//

/***************************************************************************
 * Name: myTestSuite
 * Author: Noah Buchen
 * Assignment 4: random testing
 * Description: Created for OSU postbacc CS362. This testsuite will begin
 * with unit tests of four functions of the dominion.c code, shuffle, drawCard,
 * discardCard, and fullDeckCount. It will also cover four card effects that
 * I refactored and then bugged up in Assignment 2. Code structure includes
 * a custom assert function that will maintain code execution for passing
 * or failing tests. For Assignment 4 random tests have been added for 3
 * different cards, smithy, adventurer, and embargo.
***************************************************************************/

#include <memory.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <tgmath.h>
#include "myTestSuite.h"
#include "dominion.h"
#include "dominion_helpers.h"
#include "rngs.h"



void gainRandomCards(int supplyPos, struct gameState *state, int toFlag, int supplyLimit){

	//split between players
	int cardsInPlay = supplyLimit - (floor(Random() * supplyLimit));
	int playerOneGets = cardsInPlay - (floor(Random() * cardsInPlay));
	for (int k = 0; k < cardsInPlay; ++k) {
		if (playerOneGets){
			//limit deck size to 70
			if(state->deckCount[0] <= 70) {
				gainCard(supplyPos, state, toFlag, 0);
			}
			playerOneGets--;
		}else
			if(state->deckCount[0] <= 70) {
				gainCard(supplyPos, state, toFlag, 1);
			}
	}
}
void initializeRandomState(int numPlayers,  int kingdomCards[10], int randomSeed,
						 struct gameState *state){
	int i;
	int j;
	int it;

	//set up random number generator
	SelectStream(1);
	PutSeed((long)randomSeed);

	//set number of players
	state->numPlayers = numPlayers;

	//initialize supply
	///////////////////////////////

	//set number of Curse cards
	if (numPlayers == 2)
	{
		state->supplyCount[curse] = 10;
	}
	else if (numPlayers == 3)
	{
		state->supplyCount[curse] = 20;
	}
	else
	{
		state->supplyCount[curse] = 30;
	}

	//set number of Victory cards
	if (numPlayers == 2)
	{
		state->supplyCount[estate] = 8;
		state->supplyCount[duchy] = 8;
		state->supplyCount[province] = 8;
	}
	else
	{
		state->supplyCount[estate] = 12;
		state->supplyCount[duchy] = 12;
		state->supplyCount[province] = 12;
	}

	//set number of Treasure cards
	state->supplyCount[copper] = 60 - (7 * numPlayers);
	state->supplyCount[silver] = 40;
	state->supplyCount[gold] = 30;

	//create random decks
	//set deckcounts
	for (int k = 0; k < numPlayers; ++k) {
		state->deckCount[k] = 0;
	}
	gainRandomCards(curse, state, 1, 10);

	//get random number of Victory cards in each deck
	gainRandomCards(estate, state, 1, 8);
	gainRandomCards(duchy, state, 1, 8);
	gainRandomCards(province, state, 1, 8);

	//get random number of Treasure cards in each deck
	gainRandomCards(copper, state, 1, 46);
	gainRandomCards(silver, state, 1, 40);
	gainRandomCards(gold, state, 1, 30);


	//get number of Kingdom cards in each deck
	for (i = adventurer; i <= treasure_map; i++)
		//loop all cards
	{
		for (j = 0; j < 10; j++)           		//loop chosen cards
		{
			if (kingdomCards[j] == i)
			{
				//check if card is a 'Victory' Kingdom card
				if (kingdomCards[j] == great_hall || kingdomCards[j] == gardens) {
					state->supplyCount[i] = 8;
					gainRandomCards(kingdomCards[j], state, 1, 8);
				}
				else
				{
					state->supplyCount[i] = 10;
					gainRandomCards(kingdomCards[j], state, 1, 10);
				}
				break;
			}
			else    //card is not in the set choosen for the game
			{
				state->supplyCount[i] = -1;
			}
		}

	}
	//shuffle player decks
	for (i = 0; i < numPlayers; i++)
	{
		shuffle(i, state);
	}

//add a random embargo tokens on to some supply piles
	for (i = 0; i <= treasure_map; i++)
	{
		if (state->supplyCount[i] != -1) {
			//1/3 chance to add
			int addEmbargo = floor(Random() * 3);
			if (addEmbargo == 1) {
				state->embargoTokens[i] = 1;
			}
		}
	}

	//initialize a player's turn
	if(state->supplyCount[outpost] != 0){
		//add some outposts
		state->outpostPlayed = floor(Random() * 10);
	}
	//phase must be 0 to test using cards
	state->phase = 0;
	state->numActions = floor(Random()* 10);
	state->numBuys = floor(Random()*10);
	state->whoseTurn = 0;
	//all test run on player [0] for now TODO make whoseTurn random
	state->playedCardCount = floor(Random() * state->deckCount[0]);
	state->handCount[state->whoseTurn] = floor(Random() * 15);
	while(state->handCount[state->whoseTurn] + state->playedCardCount > state->deckCount[whoseTurn(state)]){
		state->playedCardCount = floor(Random() * state->deckCount[0]);
		state->handCount[state->whoseTurn] = floor(Random() * 15);
	}
	//check for negative handCount
	//printf("HandCount: %d\n", state->handCount[state->whoseTurn]);
	if(state->handCount[state->whoseTurn] < 0) state->handCount[state->whoseTurn] = 0;
	state->discardCount[state->whoseTurn] = floor(Random() * state->deckCount[state->whoseTurn]);

	int drawTotal = state->handCount[state->whoseTurn];
	//Moved draw cards to here, only drawing at the start of a turn
	for (it = 0; it < drawTotal; it++){
		drawCard(state->whoseTurn, state);
	}

	updateCoins(state->whoseTurn, state, 0);
}
//random testing

void randomTestDriver (int numPlayers, int testCase){

	struct gameState unmutable;
	struct gameState mutable;
	int testResult;


	//add adventurer, embargo, smithy and seven other random cards
	int k[10] = {adventurer, embargo, smithy};
	for (int i = 3; i < 10; ++i) {
		int cardToAdd = floor(Random() * treasure_map);
		while (cardToAdd == adventurer || cardToAdd == embargo || cardToAdd == smithy || cardToAdd < 7){
			cardToAdd = floor(Random() * treasure_map);
		}
		k[i] = cardToAdd;
	}

	//produce random seed
	int seed = floor((Random() * 99999999) + 1);

	//Intialize mutable gamestate
	memset(&mutable, 'z', sizeof(struct gameState));
	initializeRandomState(numPlayers, k, seed, &mutable);

	//copy to unmutable gamestate
	memcpy (&unmutable, &mutable, sizeof(struct gameState));
	//printf("Testing Initializing and memcpy\n");
	testResult = memcmp(&mutable, &unmutable, sizeof(struct gameState));
	//printf("Memcmp results = %d ", testResult);
	asserttruerandom((testResult == 0));

	switch(testCase) {
		case SMITHY: {
			testResult = randomTestSmithy(numPlayers, &mutable, &unmutable);
			if (!testResult) {
				printf("**TEST SUITE ERROR: Smithy**\n");
			}
		}
			break;
		case ADVENTURER: {
			testResult = randomTestAdventurer(numPlayers, &mutable, &unmutable);
			if (!testResult) {
				printf("**TEST SUITE ERROR: Adventurer**\n");
			}
		}
			break;
		case EMBARGO:{

			testResult = randomTestEmbargo(numPlayers, &mutable, &unmutable);
			if (!testResult) {
				printf("**TEST SUITE ERROR: Embargo**\n");
			}
		}
			break;
		}
	}

//unit testing
/*
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
			printf("**TESTING: shuffle**\n");

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
		case EMBARGO: {
			testResult = playCardTestEmbargo(numPlayers, &mutable, &unmutable);
				if (testResult) {
					printf("**COMPLETED TESTING: Embargo**\n");
				} else {
					printf("**TEST SUITE ERROR: Embargo**\n");
				}
			}
			break;
		}
}*/

int main(int argc, char** argv){

	//Random Tester
	//enter number of test runs
	const int TESTRUNS = 100000;

	for (int j = 0; j < argc; ++j) {

		if (strcmp(argv[j], "smithy") == 0) {
			//enter number of asserts here (don't forget to +1 for the initialization assert)
			const int ASSERTCOUNT = 7;
			printf("**************************\nRunning: Random \"%s\" Tests\n**************************\n", argv[j]);
			for (int i = 0; i < TESTRUNS; ++i) {
				randomTestDriver(2, SMITHY);
				testCounter++;
			}
			printf("**************************\n");
			printf("Successful \"%s\" Tests: %d of %d \n", argv[j], successfulTests, TESTRUNS * ASSERTCOUNT);
			printf("**************************\n");

		} else if (strcmp(argv[j], "adventurer") == 0) {
			//enter number of asserts here (don't forget to +1 for the initialization assert)
			const int ASSERTCOUNT = 5;
			printf("**************************\nRunning: Random \"%s\" Tests\n**************************\n", argv[j]);
			for (int i = 0; i < TESTRUNS; ++i) {
				randomTestDriver(2, ADVENTURER);
				testCounter++;
			}
			printf("**************************\n");
			printf("Successful \"%s\" Tests: %d of %d \n", argv[j], successfulTests, TESTRUNS * ASSERTCOUNT);
			printf("**************************\n");


		} else if (strcmp(argv[j], "embargo") == 0) {
			//enter number of asserts here (don't forget to +1 for the initialization assert)
			const int ASSERTCOUNT = 7;
			printf("**************************\nRunning: Random \"%s\" Tests\n**************************\n", argv[j]);
			for (int i = 0; i < TESTRUNS; ++i) {
				randomTestDriver(2, EMBARGO);
				testCounter++;
			}
			printf("**************************\n");
			printf("Successful \"%s\" Tests: %d of %d \n", argv[j], successfulTests, TESTRUNS * ASSERTCOUNT);
			printf("**************************\n");

		}


	}
		/*
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
			testDriverDominion(numPlayers, EMBARGO);
			//testDriverDominion(SALVAGER);
		//}

*/
	return 0;
}