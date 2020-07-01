// cross.c
// 1917 final exam 2014s1
// part P Q1
// 15 Marks
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include "diamond.h"
#define ASCII_A 'A'

// you can assume size is an odd positive value
// this function is to print on the screen a cross 
// made of asterisks which fits inside a square of
// side length "size"

/* 
compile and test your code as follows

$ gcc -Wall -Werror -std=c99 -O -o partP1 cross.c testCross.c

examples

$ ./partP1 3
 *
* *
 *

$ ./partP1 5
  *
 * *
*   *
 * *
  *

$ ./partP1 7
   *
  * *
 *   *
*     *
 *   *
  * *
   *

$ ./partP1 1
*

submit with this command
$ submit partP1 cross.c
*/

void drawDiamond (int size) {
   int rowCount = 0;
   int placeCount = 0;// the place on the line

   //draw first half (incl. middle line)
   while(rowCount < ((size+1)/2)){
      placeCount = 0;
      //prints first spaces
      while (placeCount < (((size+1)/2) - rowCount  - 1)){
         printf(" ");
         placeCount ++;
      }

      printf("%c", rowCount + ASCII_A);
      placeCount ++;

      while (placeCount < ((size+1)/2 + rowCount - 1)){
         //prints middle spaces
         printf(" ");
         placeCount ++;
      }

      if (rowCount != 0){
         printf("%c", rowCount + ASCII_A);
      }
      printf("\n");
      rowCount ++;
   }

   //draw second half

   while(rowCount < size){
      placeCount = 0;
      //prints first spaces
      while (placeCount < rowCount - ((size+1)/2) +1){
         printf(" ");
         placeCount ++;
      }

      printf("%c", size - rowCount - 1 + ASCII_A);
      placeCount ++;

      while (placeCount < (size - rowCount + (size - 1)/2) - 1){
         //prints middle spaces
         printf(" ");
         placeCount ++;
      }

      if (rowCount != size - 1){
         printf("%c", size - rowCount - 1 + ASCII_A);
      }
      printf("\n");
      rowCount ++;
   }
}


