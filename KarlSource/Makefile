all: lectures printable Figs/rmd_compilation_fig.png

lectures: ../Slides/2018_SISBID-RR_01_introduction_slides.pdf \
	  ../Slides/2018_SISBID-RR_05_bigjobs_slides.pdf \
	  ../Slides/2018_SISBID-RR_06_make_slides.pdf \
	  ../Slides/2018_SISBID-RR_13_summary_slides.pdf \
	  ../Slides/2018_SISBID-RR_03_example.Rmd \
	  ../Slides/2018_SISBID-RR_03_Rmarkdown.md

printable: ../Slides/2018_SISBID-RR_01_introduction_printable.pdf \
	   ../Slides/2018_SISBID-RR_05_bigjobs_printable.pdf \
	   ../Slides/2018_SISBID-RR_06_make_printable.pdf \
	   ../Slides/2018_SISBID-RR_13_summary_printable.pdf

../Slides/%.pdf: %.pdf
	cp $< ../Slides/

../Slides/%.md: %.md
	cp $< ../Slides/

../Slides/%.Rmd: %.Rmd
	cp $< ../Slides/

%_slides.pdf: %_slides.tex LaTeX/header.tex
	xelatex $<

%_printable.tex: %_slides.tex Ruby/createVersionWithNotes.rb
	Ruby/createVersionWithNotes.rb $(<F) $(@F)

%_printable.pdf: %_printable.tex LaTeX/header.tex
	xelatex $(<F)
	pdfnup $(@F) --nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.9
	mv $*_printable-nup.pdf $(@F)

Figs/rmd_compilation_fig.png: R/rmd_compilation_fig.R
	cd R;R CMD BATCH $(<F)

clean:
	rm *.aux *.log *.nav *.out *.snm *.vrb *.toc R/*.Rout
