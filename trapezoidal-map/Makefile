all: slides.pdf

PICTURES = compiled_pictures/tm-example.eps \
	compiled_pictures/tm0.eps \
	compiled_pictures/tm1.eps \
	compiled_pictures/tm2.eps \
	compiled_pictures/tm3.eps \
	compiled_pictures/tm-b4.eps \
	compiled_pictures/tm-p4-loc.eps \
	compiled_pictures/tm-s4i-p1.eps \
	compiled_pictures/tm-s4i-p2-1.eps \
	compiled_pictures/tm-s4i-p2-2.eps \
	compiled_pictures/tm-s4i-p3-1.eps \
	compiled_pictures/tm-s4i-p3-2.eps \
	compiled_pictures/tm-s4i-p4-1.eps \
	compiled_pictures/tm-s4i-p4-2.eps \
	compiled_pictures/tm-a4.eps \

GRAPHS = \
	compiled_graphs/ss0.eps \
	compiled_graphs/ss1.eps \
	compiled_graphs/ss2.eps \
	compiled_graphs/ss3.eps \
	compiled_graphs/ss-p4-loc.eps \
	compiled_graphs/ss-s4i-p1.eps \
	compiled_graphs/ss-s4i-p2-1.eps \
	compiled_graphs/ss-s4i-p2-2.eps \
	compiled_graphs/ss-s4i-p3-1.eps \
	compiled_graphs/ss-s4i-p3-2.eps \
	compiled_graphs/ss-s4i-p4-1.eps \
	compiled_graphs/ss-s4i-p4-2.eps \

slides.pdf: slides.tex $(PICTURES) $(GRAPHS)
	pdflatex slides.tex

compiled_pictures/%.eps: pictures/%.asy
	mkdir -p compiled_pictures
	asy -o $(basename $@).eps $<

compiled_graphs/%.eps: graphs/%.dot
	mkdir -p compiled_graphs
	dot2tex -tmath -ftikz --autosize $< > $(basename $@).tex
	latex -output-directory=compiled_graphs $(basename $@).tex
	dvips $(basename $@).dvi -o $(basename $@).eps 

clean:
	rm -f *.pdf
	rm -f *.eps
	rm -f *.aux
	rm -rf compiled_graphs
	rm -rf compiled_pictures
