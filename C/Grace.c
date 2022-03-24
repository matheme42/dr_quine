
#include <stdio.h>

/*
This program will print its own source when run.
*/

# define DEFINE "define"
# define SOURCE "%c#include <stdio.h>%c%c/*%cThis program will print its own source when run.%c*/%c%c# define DEFINE %cdefine%c%c# define SOURCE %c%s%c%c# define MAIN int main(){FILE *file = fopen(%cGrace_kid.c%c, %cw%c);fprintf(file, SOURCE, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, SOURCE, 34, 10, 34, 34, 34, 34, 10, 10);fclose(file);}%c%cMAIN"
# define MAIN int main(){FILE *file = fopen("Grace_kid.c", "w");fprintf(file, SOURCE, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, SOURCE, 34, 10, 34, 34, 34, 34, 10, 10);fclose(file);}

MAIN