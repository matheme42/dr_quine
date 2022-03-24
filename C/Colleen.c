#include <stdio.h>

char*f="#include <stdio.h>%c%cchar*f=%c%s%c;%c%c// fonction main du programme%cint main()%c{%c%c//printf quine%c%cprintf(f, 10, 10, 34, f, 34, 10 ,10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 10);%c%creturn (0);%c}%c";

// fonction main du programme
int main()
{
	//printf quine
	printf(f, 10, 10, 34, f, 34, 10 ,10, 10, 10, 10, 9, 10, 9, 10, 9, 10, 10);
	return (0);
}
