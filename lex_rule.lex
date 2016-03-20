%{
/* Global variable */

%}
%%

[ ]*else[ ]* {
	printf("<if-else : else clause> : %s\n",yytext);
}

[ ]*if[ ]* {
	/* compare with if */
	printf("<if-else : if clause> : %s\n",yytext);
}

[ \t] ;
[0-9]+\.[0-9]+ { 
	printf("Float point\n");
}
[0-9]+  {
	printf("Integer number\n");
}
[a-zA-Z0-9]+ { 
	printf("String\n");
}

%%
void main() {
	// lex through the input:
	yylex();
}
