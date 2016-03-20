%{

%}
%%
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
