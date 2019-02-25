//
// Created by noah2017 on 2/10/19.

#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include "dominion.h"
#include "myTestSuite.h"


int myShuffleTest(int numPlayers, struct gameState* mutable, struct gameState* unmutable){

	printf("**TESTING: shuffle**\n");

	int result = 1;

	//test normal coverage
	result = shuffle(0, mutable);
	asserttrue(result == 0);
	//test gamestate
	insertSort(mutable->hand[0], mutable->handCount[0]);
	insertSort(unmutable->hand[0], unmutable->handCount[0]);
	result = memcmp(&mutable, &unmutable, sizeof(struct gameState));
	printf("Memcmp results = %d", result);
	asserttrue(result == 0);

	//test shuffle changes order (use larger enough deck to increase assurance)
	//add 20 more card to two decks
	for (int m = 0; m < 2; ++m) {
		for (int j = mutable->deckCount[m]; j < 20; j++) {
			mutable->deck[m][j] = estate;
			mutable->deckCount[m]++;
		}
		for (int k = 20; k < 30; k++) {

			mutable->deck[m][k] = copper;
			mutable->deckCount[m]++;
		}
	}
	asserttrue((shuffle(0, mutable) == 0));

	//test shuffle does not effect deckCount
	asserttrue((mutable->deckCount[0] == 30));

	//test deck cards are unchanged
	//sort decks and compare
	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(mutable->deck[1]), mutable->deckCount[1], sizeof(int), compare);
	//compare decks
	for (int k = 0; k < 30; ++k) {
		//different order passes
		if (mutable->deck[0][k] == mutable->deck[1][k]) {
			result = 1;
		}
		else {
			result = -1;
			break;
		}
	}
	asserttrue((result == 1));

	//test for empty deck conditional, set deck count to 0,
	mutable->deckCount[0] = 0;
	result = shuffle(0, mutable);
	asserttrue((result == -1));

	return 1;
}
//

