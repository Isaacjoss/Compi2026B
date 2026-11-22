%{
#include <stdio.h>
%}
%%
"<="|">="|"=="|"!="|"<"|">"     { printf("OPERADOR RELACIONAL: %s\n", yytext); }
"+"|"-"|"*"|"/"                 { printf("OPERADOR ARITMETICO: %s\n", yytext); }
[ \t\n\r]+                      { /* ignorar espacios y saltos de linea */ }
.                               { /* ignorar operandos y otros simbolos */ }
%%
int main()
{
    yylex();
    return 0;
}
