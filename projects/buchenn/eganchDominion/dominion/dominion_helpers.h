#ifndef _DOMINION_HELPERS_H
#define _DOMINION_HELPERS_H

#include "dominion.h"

int drawCard(int player, struct gameState *state);
int updateCoins(int player, struct gameState *state, int bonus);
int discardCard(int handPos, int currentPlayer, struct gameState *state, 
		int trashFlag);
int gainCard(int supplyPos, struct gameState *state, int toFlag, int player);
int getCost(int cardNumber);
int cardEffect(int card, int choice1, int choice2, int choice3, 
	       struct gameState *state, int handPos, int *bonus);

int useAdventurer(int currentPlayer, struct gameState* state, int* tempHand);
int useSmithy(int handPos, int currentPlayer, struct gameState* state);
int useSalvager(int choice1, int handPos, int currentPlayer, struct gameState* state);
int useEmbargo(int choice1, int handPos, int currentPlayer, struct gameState* state);
int useCutpurse(int handPos, int currentPlayer, struct gameState* state);


//Egan's refractor function headers

int adventurerCardEffect(struct gameState *state, int currentPlayer);
int smithyCardEffect(struct gameState *state, int currentPlayer, int handPos);
int villageCardEffect(struct gameState *state, int currentPlayer, int handPos);
int feastCardEffect(struct gameState *state, int currentPlayer, int choice1);
int tributeCardEffect(struct gameState *state, int currentPlayer);
/* Card effects for the adventurer, smithy, village, feast, and tribute */
#endif
