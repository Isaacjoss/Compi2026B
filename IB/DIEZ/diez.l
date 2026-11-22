/* Declaraciones */
%{
	#include <stdio.h>
%}
/* Reglas */
%%
[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}	printf("TOKEN CORREO VALIDO: %s\n", yytext);
.|\n	;
%%
/* Codigo (main) */
int main()
{
	yylex();
	return 0;
}
