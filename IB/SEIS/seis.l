%{
#include <stdio.h>
%}
%%
if|else|while|int           { printf("PALABRA RESERVADA: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9_]*       { printf("IDENTIFICADOR: %s\n", yytext); }
[0-9]+                      { printf("NUMERO ENTERO: %s\n", yytext); }
[ \t\n\r]+                  { /* ignorar espacios y saltos de linea */ }
.                           { printf("NO RECONOCIDO: %s\n", yytext); }
%%
int main()
{
    yylex();
    return 0;
}
