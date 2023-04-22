target: notebook.pdf

notebook.pdf: notebook.tex
	xelatex  notebook.tex
	del notebook.pdf
	xelatex notebook.tex

clean:
	del notebook.pdf
