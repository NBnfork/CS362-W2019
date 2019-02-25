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
	//check two cards drawn are treasure and discard them
	int twoTreasuresDrawn = 0;//use as bool
	if (mutable->hand[0][5] == copper || mutable->hand[0][5] == silver || mutable->hand[0][5] == gold)
		discardCard(5, 0, mutable, 0);
		if(mutable->hand[0][6] == copper || mutable->hand[0][6] == silver || mutable->hand[0][6] == gold)
			discardCard(6, 0, mutable, 0);
			twoTreasuresDrawn = 1;
	asserttrue((twoTreasuresDrawn == 1));
	//test count of cards in hand (were other cards drawn discarded)
	asserttrue((mutable->handCount[0] == 5));
	//test gameState
	//first remove adventurer card from deck
	mutable->playedCards[mutable->playedCardCount] = 0;
	mutable->playedCardCount--;
	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(&mutable, &unmutable, sizeof(struct gameState));
	printf("Memcmp results = %d", result);
	asserttrue((result == 0));

	return 1;


}

