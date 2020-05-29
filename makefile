proj = resume
SRC = resume.tex
OUT = $(SRC:.tex=.pdf)

all: $(OUT)

%.pdf: %.tex functions.tex
	xelatex $<
	xelatex $<
	convert -density 300 resume.pdf -background white -alpha remove resume.png

clean:
	-rm *.pdf
	-rm *.aux
	-rm *.log
	-rm *.out
	-rm *.blg
	-rm *.bbl
	-rm *.fls
	-rm *.xdv
	-rm *.fdb_latexmk
	-rm *~
