//
// Created by noah2017 on 3/2/19.
//

#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
#include <tgmath.h>
#include "dominion.h"
#include "dominion_helpers.h"
#include "myTestSuite.h"
#include "rngs.h"

int randomTestEmbargo(int numPlayers, struct gameState* mutable, struct gameState* unmutable) {
	int result = 1;

//Test#1- basic usage
//choice == random kingdom card to embargo
	int choice = -1;
	int randomCard;
	//loop until card in play found
	while(choice == -1){
		//make sure random card is
		randomCard = floor(Random() * (treasure_map + 1));
		if (randomCard > 6) {
			choice = mutable->supplyCount[randomCard];
		}
	}
	choice = randomCard;
//save handCount, playedCardCount, embargo tokens on choice
	int preHandCount = mutable->handCount[whoseTurn(mutable)];
	int prePlayedCount = mutable->playedCardCount;
	int toksOnChoice = mutable->embargoTokens[choice];
//save coin total
	int coinTotalSaved = mutable->coins;
//put Embargo into hand which is initialized with random number of cards
	mutable->hand[0][mutable->handCount[mutable->whoseTurn]] = embargo;
	mutable->handCount[whoseTurn(mutable)]++;
//use Embargo(choice1=the kingdomcard to embargo, handpos of embargo, player, gamestate)

	result = useEmbargo(choice, mutable->handCount[whoseTurn(mutable)] - 1, whoseTurn(mutable), mutable);
	asserttruerandom((result == 0));
//check if +2 coins added
	asserttruerandom((mutable->coins == coinTotalSaved + 2));
//check if embargoTokens[choice]++
	asserttruerandom((mutable->embargoTokens[choice] == toksOnChoice + 1));
//check if Embargo is trashed aka playedCardCount is unchanged
	asserttruerandom((mutable->playedCardCount == prePlayedCount));

//test gameState
//reset coins
	mutable->coins = coinTotalSaved;
//reset embargoTokens
	mutable->embargoTokens[choice] = toksOnChoice;
//reset last card in deck from -1 (behavior from discardCard())
	mutable->hand[0][mutable->handCount[0]] = unmutable->hand[0][mutable->handCount[whoseTurn(mutable)]];

	qsort((void *) (mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort((void *) (unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	asserttruerandom((result == 0));


//Test#2- edge case coverage, supply pile is out of play
	/*
	 while(choice != -1){
		//get a random kingdom card
		int randomCard = floor(Random() * (treasure_map + 1));
		if (randomCard > 6) {
			choice = mutable->supplyCount[randomCard];
		}
	}
//out of play piles are set to -1
	if (mutable->supplyCount[choice] < 0) {
//put Embargo into hand
		mutable->hand[whoseTurn(mutable)][mutable->handCount[whoseTurn(mutable)]] = embargo;
		mutable->handCount[whoseTurn(mutable)]++;
		asserttruerandom((useEmbargo(choice, mutable->handCount[whoseTurn(mutable)] - 1, numPlayers, mutable) == -1))
	}
	*/
	return 1;
}