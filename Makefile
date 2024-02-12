# Makefile for compiling LaTeX documents

# Main document filename without extension
MAIN = FDD

# Compiler and flags
COMPILER = xelatex
COMPILERNORMAL = pdflatex
FLAGS = 

# Target for compiling the LaTeX document
.PHONY: all clean

all: $(MAIN).tex
	$(COMPILER) $(FLAGS) $(MAIN) && $(COMPILER) $(FLAGS) $(MAIN)

# Clean-up command
clean:
	del /f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).pdf $(MAIN).toc latexmkrc $(MAIN).fls $(MAIN).fdb_latexmk