/* Declaraciones */
%{
	#include<stdlib.h>
	#include<stdio.h>
	#include<string.h>

	long binario_a_decimal(char *s)
	{
		long valor = 0;
		int i;
		for (i = 0; i < strlen(s); i++)
			valor = valor * 2 + (s[i] - '0');
		return valor;
	}
%}
/* Reglas */
%%
(0|1)+	printf("BINARIO %s = DECIMAL %ld\n", yytext, binario_a_decimal(yytext));
\n	;
.	;
%%
/* Codigo (main) */
int main()
{
	yylex();
	return 0;
}
