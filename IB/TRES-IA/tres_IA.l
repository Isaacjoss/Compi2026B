%{
#include <stdio.h>

int num_lineas = 0;
int num_caracteres = 0;
%}

%%

\n	{ num_lineas++; num_caracteres++; }
.	{ num_caracteres++; }  

%%

int yywrap(void){
	return 1;
}

int main(void){
	yylex();
	printf("Numero de lineas: %d\n", num_lineas);
	printf("Numero de caracteres: %d\n", num_caracteres);
	return 0;
}
