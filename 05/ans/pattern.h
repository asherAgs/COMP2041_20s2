// pattern.h
// don't alter this file


/* 
compile and test your code as follows

$ gcc -Wall -Werror -std=c99 -O -o partP1 pattern.c testPattern.c

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
AB  BA
ABCCBA

*/

// you can assume size is a positive value between 1 and 26 (inclusive)
// this function is to print on the screen a pattern of upper case 
// characters with an empty diamond shape in the center.
// The number of unique characters to be used is equal to "size" and 
// always start from 'A'. The pattern fits inside a square of side
// length "2*size".
// NOTE: It is hard to describe the pattern in words but the examples 
// above should clarify what is expected. 
void printPattern (int size);