target: notebook.pdf

notebook.pdf: notebook.tex
	xelatex  notebook.tex
	rm notebook.pdf
	xelatex notebook.tex
	mv notebook.pdf ./output

clean:
	bash ./clean.sh
