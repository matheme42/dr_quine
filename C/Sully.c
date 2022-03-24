#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *code = "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c%1$cchar *code = %2$c%4$s%2$c;%1$c%1$cint main()%1$c{%1$c    char nom[10];%1$c    char buff[60];%1$c    FILE *file;%1$c%1$c    int entier = %3$d;%1$c    if (entier-- == 0)%1$c        return (0);%1$c%1$c    memset(buff, 0, sizeof(buff));%1$c    strcpy(nom, %2$cSully_X.c%2$c);%1$c    nom[6] = entier + 48;%1$c    if (!(file = fopen(nom, %2$cw%2$c)))%1$c        return (1);%1$c    fprintf(file, code, 10, 34, entier, code, 37);%1$c    fclose(file);%1$c    sprintf(buff, %2$cgcc -Wall -Wextra -Werror %5$cs && ./a.out%2$c, nom);%1$c    system(buff);%1$c%1$c    return (0);%1$c}";

int main()
{
    char nom[10];
    char buff[60];
    FILE *file;

    int entier = 5;
    if (entier-- == 0)
        return (0);

    memset(buff, 0, sizeof(buff));
    strcpy(nom, "Sully_X.c");
    nom[6] = entier + 48;
    if (!(file = fopen(nom, "w")))
        return (1);
    fprintf(file, code, 10, 34, entier, code, 37);
    fclose(file);
    sprintf(buff, "gcc -Wall -Wextra -Werror %s && ./a.out", nom);
    system(buff);

    return (0);
}