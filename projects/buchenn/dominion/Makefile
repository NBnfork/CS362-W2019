CFLAGS= -Wall -fpic -coverage -lm -std=c99

rngs.o: rngs.h rngs.c
	gcc -c rngs.c -g  $(CFLAGS)

dominion.o: dominion.h dominion.c rngs.o
	gcc -c dominion.c -g  $(CFLAGS)

playdom: dominion.o playdom.c
	gcc -o playdom playdom.c -g dominion.o rngs.o $(CFLAGS)
#To run playdom you need to entere: ./playdom <any integer number> like ./playdom 10*/
testDrawCard: testDrawCard.c dominion.o rngs.o
	gcc  -o testDrawCard -g  testDrawCard.c dominion.o rngs.o $(CFLAGS)

badTestDrawCard: badTestDrawCard.c dominion.o rngs.o
	gcc -o badTestDrawCard -g  badTestDrawCard.c dominion.o rngs.o $(CFLAGS)

testShuffle: testShuffle.c dominion.o rngs.o
	gcc -o testShuffle -g  testShuffle.c dominion.o rngs.o $(CFLAGS)

testAll: dominion.o testSuite.c
	gcc -o testSuite testSuite.c -g  dominion.o rngs.o $(CFLAGS)

interface.o: interface.h interface.c
	gcc -c interface.c -g  $(CFLAGS)
#gcc -Wall -std=c99 -o  prog compare.c bst.c main.c -ftest-coverage -fpro    file-arcs

runtests: testShuffle
	./testShuffle &> unittestresult.out.sample
	gcov dominion.c >> unittestresult.out.sample
	cat dominion.c.gcov >> unittestresult.out.sample

#add unit 2,3,4 card 3,4
unitTests: dominion.o rngs.o unittest1.c myTestSuite.c cardtest1.c cardtest2.c cardtest3.c
	gcc -Wall -std=c99 -o unitTests myTestSuite.c unittest1.c cardtest1.c cardtest2.c cardtest3.c -g dominion.o rngs.o $(CFLAGS)

unittestresults: unitTests
	./unitTests | tee unittestresult.out
	gcov -b dominion.c >> unittestresult.out
	cat dominion.c.gcov >> unittestresult.out

randomtest1: dominion.o rngs.o myTestSuite.c randomtestcard1.c
	gcc -Wall -std=c99 -o randomtest1 myTestSuite.c randomtestcard1.c -g dominion.o rngs.o $(CFLAGS)

randomtest2: dominion.o rngs.o myTestSuite.c randomtestcard2.c
	gcc -Wall -std=c99 -o randomtest2 myTestSuite.c randomtestcard2.c -g dominion.o rngs.o $(CFLAGS)

randomtestAdv: dominion.o rngs.o myTestSuite.c randomtestadventurer.c
	gcc -Wall -std=c99 -o randomtestadventurer myTestSuite.c randomtestadventurer.c -g dominion.o rngs.o $(CFLAGS)

#add random2 when complete
randomtestAll: dominion.o rngs.o myTestSuite.c randomtestadventurer.c randomtestcard1.c
	gcc -Wall -std=c99 -o randomtest1 myTestSuite.c randomtestadventurer.c randomtestcard1.c randomtestcard2.c -g dominion.o rngs.o $(CFLAGS)
	gcc -Wall -std=c99 -o randomtestadventurer myTestSuite.c randomtestadventurer.c randomtestcard1.c randomtestcard2.c -g dominion.o rngs.o $(CFLAGS)
	gcc -Wall -std=c99 -o randomtest2 myTestSuite.c randomtestadventurer.c randomtestcard1.c randomtestcard2.c -g dominion.o rngs.o $(CFLAGS)

random1: randomtest1
	./randomtest1 smithy| tee randomtestcard1.out
	gcov -b dominion.c >> randomtestcard1.out
	cat dominion.c.gcov >> randomtestcard1.out

random2: randomtest2
	./randomtest2 embargo| tee randomtestcard2.out
	gcov -b dominion.c >> randomtestcard2.out
	cat dominion.c.gcov >> randomtestcard2.out

randomAdv: randomtestAdv
	./randomtestadventurer adventurer | tee randomtestadventurer.out
	gcov -b dominion.c >> randomtestadventurer.out
	cat dominion.c.gcov >> randomtestadventurer.out

randomAll: randomtestAll
	./randomtest1 smithy | tee randomtestcard1.out
	gcov -b dominion.c >> randomtestcard1.out
	cat dominion.c.gcov >> randomtestcard1.out
	./randomtest2 embargo | tee randomtestcard2.out
	gcov -b dominion.c >> randomtestcard2.out
	cat dominion.c.gcov >> randomtestcard2.out
	./randomtestadventurer adventurer | tee randomtestadventurer.out
	gcov -b dominion.c >> randomtestadventurer.out
	cat dominion.c.gcov >> randomtestadventurer.out

player: player.c interface.o
	gcc -o player player.c -g  dominion.o rngs.o interface.o $(CFLAGS)

all: playdom player


clean:
	rm -f *.o playdom.exe playdom player player.exe  *.gcov *.gcda *.gcno *.so *.out
	rm -f randomtestadventurer testShuffle randomtest1 randomtest2 testDrawCard unitTests
