all: lectures printable Figs/rmd_compilation_fig.png

lectures: ../2018_SISBID_3_01_introduction_slides.pdf \
		  ../2018_SISBID_3_05_bigjobs_slides.pdf \
		  ../2018_SISBID_3_06_make_slides.pdf \
		  ../2018_SISBID_3_13_summary_slides.pdf \
		  ../2018_SISBID_3_03_example.Rmd \
		  ../2018_SISBID_3_03_Rmarkdown.md

printable: ../2018_SISBID_3_01_introduction_printable.pdf \
		   ../2018_SISBID_3_05_bigjobs_printable.pdf \
		   ../2018_SISBID_3_06_make_printable.pdf \
		   ../2018_SISBID_3_13_summary_printable.pdf

../%.pdf: %.pdf
	cp $< ../

../%.md: %.md
	cp $< ../

../%.Rmd: %.Rmd
	cp $< ../

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
