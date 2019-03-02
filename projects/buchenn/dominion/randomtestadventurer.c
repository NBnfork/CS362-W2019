//
// Created by noah2017 on 3/1/19.
//
#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
#include "dominion.h"
#include "dominion_helpers.h"
#include "myTestSuite.h"


int randomTestAdventurer(int numPlayers, struct gameState* mutable, struct gameState* unmutable) {

	int result = 1;
	int temphand[MAX_HAND];

	//save deckCount and handCount
	int initialDeckCount = mutable->deckCount[0];
	int initialHandCount = mutable->handCount[0];
//Testcase #1- Basic function
//add adventurer to hand
	mutable->hand[0][mutable->handCount[0]] = adventurer;
	mutable->handCount[0]++;
//call useAdventurer(handpos, player, gamestate)
	result = useAdventurer(0, mutable, temphand);
	asserttruerandom((result == 0));
//check two cards drawn are treasure and discard them
	int twoTreasuresDrawn = 0;//use as bool
	if (mutable->hand[0][mutable->handCount[0] - 1] == copper ||
		mutable->hand[0][mutable->handCount[0] - 1] == silver ||
		mutable->hand[0][mutable->handCount[0] - 1] == gold) {
		if (mutable->hand[0][mutable->handCount[0] - 2] == copper ||
			mutable->hand[0][mutable->handCount[0]- 2] == silver ||
			mutable->hand[0][mutable->handCount[0] - 2] == gold) {
				mutable->hand[0][mutable->handCount[0] - 1] = unmutable->hand[0][mutable->handCount[0] - 1];
				mutable->hand[0][mutable->handCount[0] - 2] = unmutable->hand[0][mutable->handCount[0]];
				mutable->handCount[0] -= 2;
				twoTreasuresDrawn = 1;
		}
	}
	asserttruerandom((twoTreasuresDrawn == 1));
//test count of cards in hand (useAdventurer will draw and discard multi times)
	asserttruerandom((mutable->handCount[0] == initialHandCount));

//test gameState
//reset deckCount (behavior from useAdventure)
	mutable->deckCount[0] = mutable->deckCount[0];
//remove adventurer card from deck
	mutable->playedCards[mutable->playedCardCount - 1] = unmutable->playedCards[0];
	mutable->playedCardCount--;
//reset discard
	while(mutable->discardCount[0] > 0) {
		mutable->discard[0][mutable->discardCount[0] - 1] = unmutable->discard[0][0];
		mutable->discardCount[0]--;
	}
//reset deck and hand
	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	asserttruerandom((result == 0));

//Testcase #2- extend branch coverage
//test shuffle conditional, set deckCount to 0
	mutable->deckCount[0] = 0;
	result = useAdventurer(0, mutable, temphand);
	asserttruerandom((result == 0));

//check two cards drawn are treasure and discard them
	if (mutable->hand[0][mutable->handCount[0] - 1] == copper ||
		mutable->hand[0][mutable->handCount[0] - 1] == silver ||
		mutable->hand[0][mutable->handCount[0] - 1] == gold) {
		if (mutable->hand[0][mutable->handCount[0]] == copper ||
			mutable->hand[0][mutable->handCount[0]] == silver ||
			mutable->hand[0][mutable->handCount[0]] == gold) {
			mutable->hand[0][mutable->handCount[0] - 1] = unmutable->hand[0][mutable->handCount[0] - 1];
			mutable->hand[0][mutable->handCount[0]] = unmutable->hand[0][mutable->handCount[0]];
			mutable->handCount[0] -= 2;
			twoTreasuresDrawn = 1;
		}
	}
	asserttruerandom((twoTreasuresDrawn == 1));

//test gameState
//reset deckCount (behavior from useAdventure)
	mutable->deckCount[0] = mutable->deckCount[0];
//remove adventurer card from deck
	mutable->playedCards[mutable->playedCardCount - 1] = unmutable->playedCards[0];
	mutable->playedCardCount--;
//reset discard
	while(mutable->discardCount[0] > 0) {
		mutable->discard[0][mutable->discardCount[0] - 1] = unmutable->discard[0][0];
		mutable->discardCount[0]--;
	}
//reset deck and hand
	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	asserttruerandom((result == 0));


	return 1;
}