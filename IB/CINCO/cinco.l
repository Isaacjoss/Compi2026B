%{
	#include <stdio.h>
	int mayus = 0, minus = 0, digitos = 0, espacios = 0;
%}
%%
[A-Z]       { mayus++; }
[a-z]       { minus++; }
[0-9]       { digitos++; }
[ \t\n\r]   { espacios++; }
.           { /* ignorar otros caracteres */ }
%%S
int main()
{
	yylex();
	printf("Letras mayusculas: %d\n", mayus);
	printf("Letras minusculas: %d\n", minus);
	printf("Digitos: %d\n", digitos);
	printf("Espacios en blanco: %d\n", espacios);
	return 0;
}
