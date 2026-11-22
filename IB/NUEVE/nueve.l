/* Declaraciones */
%{
	#include <stdio.h>
	int cont[10] = {0};
%}
/* Reglas */
%%
[0-9]	cont[yytext[0] - '0']++;
.|\n	;
%%
/* Codigo (main)*/
int main()
{
	yylex();
	printf("\nDigito\tCantidad\n");
	for (int i = 0; i < 10; i++) {
		printf("%d\t%d\n", i, cont[i]);
	}
	return 0;
}
