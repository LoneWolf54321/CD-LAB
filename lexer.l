%option noyywrap

%{
    #include<stdio.h>

%}

%%

"int"|"float"|"char" { printf("KEYWORD: %s\n", yytext);}
[0-9]+ { printf("NUMBER: %s\n", yytext);}
[a-zA-z_][a-zA-z0-9]* { printf("IDENTIFIER: %s\n", yytext);}
"="|"+"|"-"|"*"|"/" { printf("OPERATOR: %s\n", yytext);}
";" { printf("SEMICOLON\n");}
[ \t\n]+ ;
. {printf("UNKNOWN: %s\n", yytext);}

%%

int main(){
    yylex();
    return 0;
}