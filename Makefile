all: title/title.pdf abstract/abstract.pdf main.pdf

main.pdf: main.tex
	latexmk -pdf main.tex

title/title.pdf: title/title.tex
	latexmk -pdf -cd -outdir=./title title/title.tex

abstract/abstract.pdf:  abstract/abstract.tex
	latexmk -pdf -cd -outdir=./abstract abstract/abstract.tex

preview: main.tex
	latexmk -pdf -pvc -use-make --view='pdf' main.tex

clean-all: clean clean-title clean-abstract

clean:
	latexmk -CA

clean-title: title/title.tex
	latexmk -cd -CA title/title.tex

clean-abstract:
	latexmk -cd -CA abstract/abstract.tex