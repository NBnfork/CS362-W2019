cmake_minimum_required(VERSION 3.13)
project(dominion C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(dominion

        dominion.c
        dominion.h
        dominion_helpers.h


        rngs.c
        rngs.h
        myTestSuite.c
        myTestSuite.h
        unittest1.c
        unittest2.c
        unittest3.c
        unittest4.c
        cardtest1.c
        cardtest2.c
        cardtest3.c
        cardtest4.c randomtestcard1.c)
