
all: plans-and-doc.pdf

%.pdf: %.tex
	rm -vf $*.log $*.aux # Remove these files because they sometimes cause pdflatex to fail.
	pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -vf *.log *.aux *.pdf
