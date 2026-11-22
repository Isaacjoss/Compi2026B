/* Declaraciones */
%{
	#include<stdlib.h>
	#include<stdio.h>
%}
/* Reglas */
%%
[0-9]+[a-zA-Z][a-zA-Z0-9]*	printf("ERROR: token invalido '%s'\n", yytext);
[0-9]+				printf("ENTERO: %s\n", yytext);
[a-zA-Z][a-zA-Z0-9]*		printf("IDENTIFICADOR: %s\n", yytext);
","				printf("SEPARADOR: ,\n");
(" "|\t|\n)+			;
.				printf("ERROR: token invalido '%s'\n", yytext);
%%
/* Codigo (main) */
int main()
{
	yylex();
	return 0;
}
