/* Declaraciones */
%{
	#include<stdlib.h>
	#include<stdio.h>
	#include<string.h>

	long hex_a_decimal(char *s)
	{
		long valor = 0;
		int i, digito;
		for (i = 2; i < strlen(s); i++)   /* i = 2 salta el prefijo 0x */
		{
			if (s[i] >= '0' && s[i] <= '9')
				digito = s[i] - '0';
			else if (s[i] >= 'A' && s[i] <= 'F')
				digito = s[i] - 'A' + 10;
			else
				digito = s[i] - 'a' + 10;
			valor = valor * 16 + digito;
		}
		return valor;
	}
%}
/* Reglas */
%%
0(x|X)([0-9]|[A-F]|[a-f])+	printf("HEXADECIMAL %s = DECIMAL %ld\n", yytext, hex_a_decimal(yytext));
\n	;
.	;
%%
/* Codigo (main) */
int main()
{
	yylex();
	return 0;
}
