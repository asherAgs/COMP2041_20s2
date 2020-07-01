#include <stdio.h>

int main (int argc, char *argv[]){
	int q;int *p = NULL;q = 24;
	*p = 42;
	q = *p;
	printf("The value of q is %d\n", q);
	return 0;
}
