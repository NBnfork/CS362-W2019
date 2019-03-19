//
// Created by noah2017 on 2/10/19.
//

#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include "dominion.h"
#include "dominion_helpers.h"
#include "myTestSuite.h"

int playCardTestEmbargo(int numPlayers, struct gameState* mutable, struct gameState* unmutable){
	printf("******Testing Embargo*********\n");
	int result = 1;

	//Test#1- basic usage
	//save coin total
	int coinTotalSaved = mutable->coins;
	//put Embargo into hand which is intialized with 5 cards
	mutable->hand[0][5] = embargo;
	mutable->handCount[0]++;
	//use Embargo(choice1=the kingdomcard to embargo, handpos of embargo, player, gamestate)
	//choice == true
	int choice = adventurer;
	result = useEmbargo(choice, 5, 0, mutable);
	asserttrue((result == 0));
	//check if +2 coins added
	asserttrue((mutable->coins == coinTotalSaved + 2));
	//check if embargoTokens[choice]++
	asserttrue((mutable->embargoTokens[adventurer] == 1));
	//check if Embargo is trashed aka not in the discard or playedCards pile
	asserttrue((mutable->discardCount[0] == 0));
	asserttrue((mutable->playedCardCount == 0));

	//test gameState
	//reset coins
	mutable->coins = coinTotalSaved;
	//reset embargoTokens
	mutable->embargoTokens[adventurer] = 0;
	//reset last card in deck from -1 (behavior from discardCard())
	mutable->hand[0][mutable->handCount[0]] = unmutable->hand[0][5];

	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	printf("Memcmp results = %d", result);
	asserttrue((result == 0));

	//Test#2- edge case coverage, supply pile out of play
	choice = feast;
	//out of play piles are set to -1
	if(mutable->supplyCount[choice] < 0){
		//put Embargo into hand which is intialized with 5 cards
		mutable->hand[0][5] = embargo;
		mutable->handCount[0]++;
		asserttrue((useEmbargo(choice, 5, numPlayers, mutable) == -1))
	}

	return 1;

}

