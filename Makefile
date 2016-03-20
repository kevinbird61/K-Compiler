EXE = lex_anal.out
CC = gcc lex.yy.c -lfl -o
LEX = lex_rule.lex

$(EXE):$(LEX)
	lex $(LEX) 
	$(CC) $(EXE)

run : 
	./$(EXE)

clean:
	rm *.out
	rm lex.yy.c	
	rm *~
