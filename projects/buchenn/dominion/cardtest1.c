//
// Created by noah2017 on 2/10/19.
//

#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
#include "dominion.h"
#include "dominion_helpers.h"
#include "myTestSuite.h"

int playCardTestSmithy(int numPlayers, struct gameState* mutable, struct gameState* unmutable){


	printf("******Testing Smithy*********\n");
	int result = 1;

	//test basic function
	//put Smithy into hand which is intialized with 5 cards
	mutable->hand[0][5] = smithy;
	mutable->handCount[0]++;
	//use Smithy(handpos, player, gamestate)
	result = useSmithy(5, 0, mutable);
	asserttrue((result == 0));
	//check hand size should be +3
	asserttrue((mutable->handCount[0] == 8));
	//reset last card in deck from -1 (behavior from discardCard())
	mutable->hand[0][mutable->handCount[0]] = unmutable->hand[0][5];
	//check hand has 3 cards from actual deck (should only be coppers and estates) and then "discard" them
	int handCheck = 1; //use like bool
	for(int i = 5; i < 8 && handCheck == 1; i++){
		if (mutable->hand[0][i] != copper && mutable->hand[0][i] != estate) handCheck = -1;
		//remove cards from hand to reset state
		mutable->hand[0][i] = unmutable->hand[0][i];
		mutable->handCount[0]--;
		//reset deckCount (behavior from useSmithy/drawCard())
		mutable->deckCount[0]++;
	}
	asserttrue((handCheck == 1));

	//test gameState
	//first remove Smithy from played cards to reset state (behavior from discardCard())
	mutable->playedCards[0] = unmutable->playedCards[0];
	mutable->playedCardCount = 0;


	qsort ((void*)(mutable->deck[0]), mutable->deckCount[0], sizeof(int), compare);
	qsort ((void*)(unmutable->deck[0]), unmutable->deckCount[0], sizeof(int), compare);
	result = memcmp(mutable, unmutable, sizeof(struct gameState));
	printf("Memcmp results = %d", result);
	asserttrue((result == 0));

	return 1;

}
