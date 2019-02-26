//
// Created by noah2017 on 2/25/19.
//

#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
#include "dominion.h"
#include "dominion_helpers.h"
#include "myTestSuite.h"

int randomTestSmithy(int numPlayers, struct gameState* mutable, struct gameState* unmutable){

	int result = 1;
	int preHandCount = 0;

	//test basic function
	//save handCount
	preHandCount = mutable->handCount[0];
	//put Smithy into hand which is intialized with random number of cards
	mutable->hand[0][mutable->handCount[0]] = smithy;
	mutable->handCount[0]++;
	//use Smithy(handpos, player, gamestate)
	result = useSmithy(mutable->handCount[0] - 1 , 0, mutable);
	asserttruerandom((result == 0));
	//test hand size == +3
	asserttruerandom((mutable->handCount[0] == preHandCount + 3));
	//reset last card in deck from -1 (behavior from discardCard())
	mutable->hand[0][mutable->handCount[0]] = unmutable->hand[0][preHandCount];
	//remove three drawn cards from hand and put back in deck
	for (int i = 0; i < 3; ++i) {
		mutable->deck[0][mutable->deckCount[0]] = mutable->hand[0][mutable->handCount[0] - 1];
		mutable->hand[0][mutable->handCount[0] - 1] = unmutable->hand[2][0];
		mutable->handCount[0]--;
		mutable->deckCount[0]++;
	}
	//test gameState
	//first remove Smithy from played cards to reset state (behavior from discardCard())
	mutable->playedCards[mutable->playedCardCount - 1] = unmutable->playedCards[0];
	mutable->playedCardCount--;

	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	//printf("Memcmp results = %d", result);
	asserttruerandom((result == 0));

	return 1;

}
