main.pdf: main.dvi
	dvipdfmx -p a4 -f font.map main.dvi

main.dvi: *.tex
	
	platex tmp.tex
	pbibtex tmp.aux
# mendex tmp
	platex tmp.tex
	platex tmp.tex
	platex tmp.tex
	mv tmp.dvi main.dvi

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg *.ilg *.idx *.toc *.ind tmp.*
