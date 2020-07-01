// pattern.c
// 1917 final exam 2015s1
// part P Q1
// 15 Marks
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include "pattern.h"

#define ASCII_A 'A'
#define TOP 0
#define BOTTOM 1

// you can assume size is a positive value between 1 and 26 (inclusive)
// this function is to print on the screen a pattern of upper case 
// characters with an empty diamond shape in the center.
// The number of unique characters to be used is equal to "size" and 
// always start from 'A'. The pattern fits inside a square of side
// length "2*size". 
// NOTE: It is hard to describe the pattern in words but the examples 
// below should clarify what is expected.

// match the output shown below

/* 
compile and test your code as follows

$ gcc -O -o partP1 -Wall -Werror -std=c99  pattern.c testPattern.c

examples and how to run it:

$ ./partP1 5
ABCDEEDCBA
ABCD  DCBA
ABC    CBA
AB      BA
A        A
A        A
AB      BA
ABC    CBA
ABCD  DCBA
ABCDEEDCBA

$ ./partP1 8
ABCDEFGHHGFEDCBA
ABCDEFG  GFEDCBA
ABCDEF    FEDCBA
ABCDE      EDCBA
ABCD        DCBA
ABC          CBA
AB            BA
A              A
A              A
AB            BA
ABC          CBA
ABCD        DCBA
ABCDE      EDCBA
ABCDEF    FEDCBA
ABCDEFG  GFEDCBA
ABCDEFGHHGFEDCBA

$ ./partP1 11
ABCDEFGHIJKKJIHGFEDCBA
ABCDEFGHIJ  JIHGFEDCBA
ABCDEFGHI    IHGFEDCBA
ABCDEFGH      HGFEDCBA
ABCDEFG        GFEDCBA
ABCDEF          FEDCBA
ABCDE            EDCBA
ABCD              DCBA
ABC                CBA
AB                  BA
A                    A
A                    A
AB                  BA
ABC                CBA
ABCD              DCBA
ABCDE            EDCBA
ABCDEF          FEDCBA
ABCDEFG        GFEDCBA
ABCDEFGH      HGFEDCBA
ABCDEFGHI    IHGFEDCBA
ABCDEFGHIJ  JIHGFEDCBA
ABCDEFGHIJKKJIHGFEDCBA

$ ./partP1 1
AA
AA

$ ./partP1 2
ABBA
A  A
A  A
ABBA

$ ./partP1 3
ABCCBA
AB  BA
A    A
A    A
AB  BA
ABCCBA

submit with this command
$ submit partP1 pattern.c
*/


void printPattern (int size) {
   int halfCounter = 0;
   int letterCounter = 0;
   int topBottom = TOP;
   
   //for the first half
   while (halfCounter<size){
   	   letterCounter = 0;
      //prints the first bit
   	  while (letterCounter< size - halfCounter){
   	     printf("%c", letterCounter + ASCII_A);
   	     letterCounter ++;
   	  }

   	  int endLetters = letterCounter;

   	  //prints the middle spaces
   	  while (letterCounter < (size*2) - endLetters){
   	  	 //printf("ENTERED");
   	     printf(" ");
   	     letterCounter ++;
   	  }

   	  int startLetters = letterCounter;

   	  //prints the last bit
   	  while (letterCounter < size*2){
   	     printf("%c", (letterCounter - startLetters) + ASCII_A);
   	     letterCounter ++;
   	  }

   	  halfCounter ++;
   	  printf("\n");
   }

   halfCounter = 1;

   //for the second half
   while (halfCounter<size){
   	   letterCounter = 0;
      //prints the first bit
   	  while (letterCounter< halfCounter){
   	     printf("%c", letterCounter + ASCII_A);
   	     letterCounter ++;
   	     //printf ("ENTERED");
   	  }

   	  int endLetters = letterCounter;

   	  //prints the middle spaces
   	  while (letterCounter < (size*2) - endLetters){
   	  	 //printf("ENTERED");
   	     printf(" ");
   	     letterCounter ++;
   	  }

   	  int startLetters = letterCounter;

   	  //prints the last bit
   	  while (letterCounter < size*2){
   	     printf("%c", (letterCounter - startLetters) + ASCII_A);
   	     letterCounter ++;
   	  }

   	  halfCounter ++;
   	  printf("\n");
   }

}


