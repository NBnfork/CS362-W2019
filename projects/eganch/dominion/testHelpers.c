#include "testHelpers.h"
#include "dominion.h"
#include "rngs.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>

//Set up test suite
struct TestState *setUpTestSuite() {
  struct TestState *testState = malloc(sizeof(struct TestState));
  testState->passedTests = 0;
  testState->failedTests = 0;
  return testState;
}

//Set up game state
int setUpGameState(struct gameState *gameState, int fixedCard) {
  for (int i = 0; i < sizeof(struct gameState); i++) {
    ((char *)gameState)[i] = floor(Random() * 256);
  }
  int playerNum = floor(Random() * 2);
  gameState->whoseTurn = playerNum;
  gameState->deckCount[playerNum] = floor(Random() * MAX_DECK);
  for (int i = 0; i < gameState->deckCount[playerNum]; i++) {
    gameState->deck[playerNum][i] = floor(Random() * 26);
  }
  gameState->discardCount[playerNum] = floor(Random() * MAX_DECK);
  gameState->handCount[playerNum] = floor(Random() * MAX_HAND) + 1;
  for (int i = 0; i < gameState->handCount[playerNum]; i++) {
    gameState->hand[playerNum][i] = floor(Random() * 26);
  }

  int fixedCardPosition = floor(Random() * gameState->handCount[playerNum]);
  gameState->hand[playerNum][fixedCardPosition] = fixedCard;

  gameState->playedCardCount = floor(Random() * MAX_DECK);
  gameState->numActions = floor(Random() * 20);

  return fixedCardPosition;
}

void setUpGameStateForAdventurer(struct gameState *gameState) {
  for (int i = 0; i < sizeof(struct gameState); i++) {
    ((char *)gameState)[i] = floor(Random() * 256);
  }
  int playerNum = floor(Random() * 2);
  gameState->whoseTurn = playerNum;
  gameState->deckCount[playerNum] = floor(Random() * MAX_DECK);
  for (int i = 0; i < gameState->deckCount[playerNum]; i++) {
    gameState->deck[playerNum][i] = floor(Random() * 26);
  }
  gameState->discardCount[playerNum] = floor(Random() * MAX_DECK);
  gameState->handCount[playerNum] = floor(Random() * MAX_HAND) + 1;
  gameState->hand[playerNum][0] = adventurer;
  for (int i = 1; i < gameState->handCount[playerNum]; i++) {
    gameState->hand[playerNum][i] = floor(Random() * 26);
  }
  gameState->playedCardCount = 0;
}

//Set up player's hand
void setPlayerHand(struct gameState *testGameState, int player, int cards[], int numCards) {
  for (int i = 0; i < numCards; i++) {
    testGameState->hand[player][i] = cards[i];
  }
}

//Returns true or false based on whether expected matches actual
bool assertTrueForIntComparison(struct TestState *testState, int expected, int actual) {
  if (expected == actual) {
    incrementPassedTests(testState);
    return true;
  }
  else {
    incrementFailedTests(testState);
    return false;
  }
}

//Returns true or false based on whether expected array matches actual
void assertTrueForIntArrayComparison(struct TestState *testState, int expected[], int expectedLength, int actual[], int actualLength) {
  bool arraysMatch = true;

  if (expectedLength != actualLength) {
    arraysMatch = false;
  }
  else {
    for (int i = 0; i < expectedLength; i++) {
      if (expected[i] != actual[i]) {
        arraysMatch = false;
      }
    }
  }
  if (arraysMatch == true) {
    incrementPassedTests(testState);
  }
  else {
    incrementFailedTests(testState);
  }
}

//Return true or false based on whether the array holds a card
bool assertTrueForArrayHoldingCardValue(struct TestState *testState, int testArray[], int testArrayLength, int cardValue) {
  bool cardValueFound = false;

  for (int i = 0; i < testArrayLength; i++) {
    if (testArray[i] == cardValue) {
      cardValueFound = true;
    }
  }

  if (cardValueFound == true) {
    incrementPassedTests(testState);
  }
  else {
    incrementFailedTests(testState);
  }

  return cardValueFound;
}

//Return true or false based on whether the array does not hold any card value
void assertTrueForArrayNotHoldingCardValue(struct TestState *testState, int testArray[], int testArrayLength, int cardValue) {
  bool cardValueFound = false;

  for (int i = 0; i < testArrayLength; i++) {
    if (testArray[i] == cardValue) {
      cardValueFound = true;
    }
  }

  if (cardValueFound == false) {
    incrementPassedTests(testState);
  }
  else {
    incrementFailedTests(testState);
  }
}

//Tracks number of failed tests
void incrementFailedTests(struct TestState *testState) {
  testState->failedTests++;
}

//Tracks number of passed tests
void incrementPassedTests(struct TestState *testState) {
  testState->passedTests++;
}

//Prints number of tests that passed or failed
void printTotalsOfPassFailTests(struct TestState *testState) {
  printf("---------------------------------------------\n");
  printf("STATUS OF TESTS\n");
  printf("Total passing tests: %d\n", testState->passedTests);
  printf("Total failing tests: %d\n", testState->failedTests);
  printf("---------------------------------------------\n");
}

//Reset counters for passed/failed tests
void resetTestCounters(struct TestState *testState) {
  testState->failedTests = 0;
  testState->passedTests = 0;
}

//Empty the player's deck and move into played cards (used to test an empty deck)
void emptyDeckIntoPlayedCards(struct gameState *state) {
  int deckSize = state->deckCount[0];
  for (int i = 0; i < deckSize; i++) {
    state->playedCards[i] = state->deck[0][state->deckCount[0]];
    state->deck[0][state->deckCount[0]] = -1;
    state->deckCount[0]--;
    state->playedCardCount++;
  }
}

//Set the player's deck to a certain card
void setPlayerDeckToCard(struct gameState *state, int card) {
  for (int i = 0; i < state->deckCount[0]; i++) {
    state->deck[0][i] = card;
  }
}

//Compare two values and return true if test value is greater than compare value
bool assertTrueForGreaterThan(struct TestState *testState, int testValue, int compareValue) {
  if (testValue > compareValue) {
    incrementPassedTests(testState);
    return true;
  }
  else {
    incrementFailedTests(testState);
    return false;
  }
}