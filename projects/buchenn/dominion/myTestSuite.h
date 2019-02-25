//
// Created by noah2017 on 2/10/19.
//

#ifndef DOMINION_MYTESTSUITE_HPP
#define DOMINION_MYTESTSUITE_HPP

#include "dominion_helpers.h"

//macro created by Jonah Siekmann posted on 9 Feb. 2019 https://piazza.com/class/jpu18p346423vs?cid=159
#define asserttrue(bool)if(bool > 0) printf("TEST SUCCESSFULLY COMPLETED.\n"); else printf("TEST FAILED: '" #bool  "' on line %d.\n", __LINE__);

enum testCase { SHUFFLE = 1,
		        DRAWCARD,
		        DISCARDCARD,
			    FULLDECKCOUNT,
			    SMITHY,
			    ADVENTURER,
			    EMBARGO,
			    SALVAGER };

void insertSort(int* theArray, int size);
void testDriverDominion(int numPlayers, int testCase);
int myShuffleTest(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int myDrawCardTest(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int discardCardTest(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int fullDeckCountTest(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int playCardTestSmithy(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int playCardTestAdventurer(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int playCardTestEmbargo(int numPlayers, struct gameState* mutable, struct gameState* unmutable);
int playCardTestSalvager(int numPlayers, struct gameState* mutable, struct gameState* unmutable);

#endif //DOMINION_MYTESTSUITE_HPP
