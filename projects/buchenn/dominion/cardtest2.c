//
// Created by noah2017 on 2/10/19.
//

#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
#include "dominion.h"
#include "dominion_helpers.h"
#include "myTestSuite.h"

int playCardTestAdventurer(int numPlayers, struct gameState* mutable, struct gameState* unmutable){
	//test basic function
	printf("******Testing Adventurer*********\n");
	int result = 1;
	int temphand[MAX_HAND];
	//test basic function
	//add adventurer to hand
	mutable->hand[0][5] = adventurer;
	mutable->handCount[0]++;
	//call useAdventurer(handpos, player, gamestate)
	result = useAdventurer(0, mutable, temphand);
	asserttrue((result == 0));
	//check adventurer is in playedCardPile
	asserttrue((mutable->playedCards[0] == adventurer));
	//test count of cards in hand (were the other cards drawn correctly discarded)
	asserttrue((mutable->handCount[0] == 7));
	//check two cards drawn are treasure and discard them
	int twoTreasuresDrawn = 0;//use as flag
	if (mutable->hand[0][5] == copper || mutable->hand[0][5] == silver || mutable->hand[0][5] == gold) {
		if (mutable->hand[0][6] == copper || mutable->hand[0][6] == silver || mutable->hand[0][6] == gold) {
			//set flag
			twoTreasuresDrawn = 1;
			//discard to reset gamestate
			mutable->hand[0][5] = unmutable->hand[0][5];
			mutable->hand[0][6] = unmutable->hand[0][6];
			mutable->handCount[0] -= 2;
		}
	}
	asserttrue((twoTreasuresDrawn == 1));


	//test shuffle conditional, set deckCount to 0
	mutable->deckCount[0] = 0;
	asserttrue(result = useAdventurer(0, mutable, temphand))
	//test gameState
	//reset deckCount (behavior from useAdventure)
	mutable->deckCount[0] = 5;
	//remove adventurer card from deck
	mutable->playedCards[0] = unmutable->playedCards[0];
	mutable->playedCardCount = 0;
	//reset discard
	while(mutable->discardCount[0] > 0) {
		mutable->discard[0][mutable->discardCount[0] - 1] = unmutable->discard[0][0];
		mutable->discardCount[0]--;
	}
	//reset deck and hand
	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	printf("Memcmp results = %d", result);
	asserttrue((result == 0));


	return 1;
}

