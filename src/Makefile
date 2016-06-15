EXE = k_compile
OBJS	= bison.o lex.o main.o
CC = g++
CFLAGS = -g -Wall -pedantic -std=c++11
LEX = lex_rule.lex

$(EXE): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXE) -ll

# For Lexer - lex
lex.o: lex.c
	$(CC) $(CFLAGS) -c lex.c -o lex.o

lex.c:$(LEX)
	flex $(LEX) 
	cp lex.yy.c lex.c

# For Parser - bison
bison.o: bison.c
	$(CC) $(CFLAGS) -c bison.c -o bison.o

bison.c: parse_rule.y
	bison -d -v parse_rule.y
	cp parse_rule.tab.c bison.c
	cmp -s parse_rule.tab.h tok.h || cp parse_rule.tab.h tok.h

main.o: main.cc
	$(CC) $(CFLAGS) -c main.cc -o main.o

lex.o bison.o main.o: header.h
lex.o main.o: tok.h

clean:
	rm lex.yy.c lex.c parse_rule.output *.o *~ parse_rule.tab.c parse_rule.tab.h tok.h bison.c $(EXE) run_compile.s
