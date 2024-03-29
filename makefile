PDFLATEX := pdflatex

sframe:	frame_$(myfile).tex
	cat driver.tex | sed s/DRIVEME/frame_$(myfile)/ > sframe_$(myfile).tex
	$(PDFLATEX) sframe_$(myfile)

lecture1:  lecture1.tex
	$(PDFLATEX) lecture1 && $(PDFLATEX) lecture1

lectureL:  lectureL.tex  $(FRAMES)
	$(PDFLATEX) lectureL && $(PDFLATEX) lectureL
