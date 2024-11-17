#Makefile for FoSaHSR
#Author: Adrian Freihofer
#Date:   15.03.2003

all: FoSaHSR.dvi

ps: FoSaHSR.ps

pdf: FoSaHSR.pdf

ps_2on1: FoSaHSR_2on1.ps

pdf_2on1: FoSaHSR_2on1.pdf

bookdvi: FoSaHSRbook.dvi

bookps: FoSaHSRbook.ps

bookpdf: FoSaHSRbook.pdf

bookdvi_2on1: FoSaHSRbook_2on1.dvi

bookps_2on1: FoSaHSRbook_2on1.ps

bookpdf_2on1: FoSaHSRbook_2on1.pdf 

FoSaHSR.ps: FoSaHSR.dvi
	dvips -o FoSaHSR.ps FoSaHSR.dvi

FoSaHSR.pdf: FoSaHSR.ps
	ps2pdf FoSaHSR.ps FoSaHSR.pdf

FoSaHSRbook.dvi: FoSaHSR.dvi
	dvibook -i FoSaHSR.dvi -o FoSaHSRbook.dvi

FoSaHSRbook.ps: FoSaHSRbook.dvi
	dvips FoSaHSRbook.dvi

FoSaHSRbook.pdf: FoSaHSRbook.ps
	ps2pdf FoSaHSRbook.ps

FoSaHSRbook_2on1.ps: FoSaHSRbook.ps
	psnup -2 FoSaHSRbook.ps >FoSaHSRbook_2on1.ps

FoSaHSRbook_2on1.pdf: FoSaHSRbook.ps
	psnup -2 FoSaHSRbook.ps >FoSaHSRbook_2on1.ps 
	ps2pdf FoSaHSRbook_2on1.ps FoSaHSRbook_2on1.pdf

FoSaHSR.dvi: ./eat/DSG/DSG.tex ./eat/Emotor/Emotor.tex ./eat/eat_main.tex ./eat/DreiPhasen/DreiSin.tex ./eat/DreiPhasen/DreiPhasen.tex ./FoSaHSR.tex ./Mathe/Faltung.tex ./Mathe/Mathe_main.tex ./Mathe/fourierFaltung.tex  ./Physik/Optik/Optik_main.tex ./Physik/Statik/Statik_main.tex ./Physik/Schwingungen/gedaempftKonst.tex ./Physik/Schwingungen/verD.tex ./Physik/Schwingungen/Schwingungen.tex ./Physik/Schwingungen/gedaempftNKonst.tex ./Physik/Schwingungen/Sinus.tex ./Physik/Wellenlehre/Wellenlehre.tex ./Physik/Physik_main.tex ./Physik/Dynamik/Dynamik_main.tex ./Physik/Kinematik/beschl.tex ./Physik/Kinematik/glbewe.tex ./Physik/Kinematik/Kinematik_main.tex ./Physik/Warmelehre/Warmelehre.tex ./Physik/MechanikDefKoerp/MechanikDefKoerp.tex ./Physik/SpezEinheiten.tex ./GlobalSettings.tex ./Elektronik/op/frequenzgang.tex ./Elektronik/op/Opamp.tex ./Elektronik/fet/fet_main.tex ./Elektronik/Diode/kennlinie.tex ./Elektronik/Diode/Diode.tex ./Elektronik/BipoTransistor/BipoTransistor.tex ./Elektronik/Elektronik_main.tex ./Elektronik/verstaerker/verstaerker.tex ./Vorwort.tex ./Elektrizitaetslehre/.tex ./Elektrizitaetslehre/Magnet/Magnet.tex ./Elektrizitaetslehre/Wechselstrom/Abbildungen/Faltung.tex ./Elektrizitaetslehre/Wechselstrom/Abbildungen/pt2.tex ./Elektrizitaetslehre/Wechselstrom/Abbildungen/pt1.tex ./Elektrizitaetslehre/Wechselstrom/Wechselstrom.tex ./Elektrizitaetslehre/Grundlagen/Grundlagen.tex ./Elektrizitaetslehre/Elektrizitaetslehre_main.tex ./digiSig/digiSig_main.tex ./digiSig/Stochastisch/stochastisch.tex ./digiSig/Abtastung/abtastung.tex
	echo "Running latex..."
	latex FoSaHSR.tex
	echo "Running makeindex..."
	makeindex FoSaHSR.idx
	echo "Rerunning latex...."
	latex FoSaHSR.tex
	latex_count=5 ; \
	while egrep -s 'Rerun (LaTeX|to get cross-references right)' FoSaHSR.log && [ $$latex_count -gt 0 ] ;\
	    do \
	      echo "Rerunning latex...." ;\
	      latex FoSaHSR.tex ;\
	      latex_count=`expr $$latex_count - 1` ;\
	    done

FoSaHSR_2on1.ps: FoSaHSR.ps
	psnup -2 FoSaHSR.ps >FoSaHSR_2on1.ps

FoSaHSR_2on1.pdf: FoSaHSR_2on1.ps
	ps2pdf FoSaHSR_2on1.ps FoSaHSR_2on1.pdf

clean:
	@echo "Cleaning"
	@rm -f *.ps *.dvi *.pdf
	@echo -n "..."
	@find -name '*.aux' -exec rm {} \;
	@echo -n "..."
	@find -name '*.bbl' -exec rm {} \;
	@echo -n "..."
	@find -name '*.blg' -exec rm {} \;
	@echo -n "..."
	@find -name '*.idx' -exec rm {} \;
	@echo -n "..."
	@find -name '*.ilg' -exec rm {} \;
	@echo -n "..."
	@find -name '*.ind' -exec rm {} \;
	@echo -n "..."
	@find -name '*.log' -exec rm {} \;
	@echo -n "..."
	@find -name '*.toc' -exec rm {} \;
	@echo -n "..."
	@find -name '*.bak' -exec rm {} \;
	@echo -n "..."
	@find -name '*~' -exec rm {} \;
	@echo "..."
	@echo "Cleaned: *.dvi, *.ps, *.pdf, *.aux, *.bbl, *.blg, *.idx, *.ilg, *.ind, *.log, *.toc, *.bak, *~"

statistic:
	echo "lines in project: "
	find -name '*.tex' -exec cat {} \; | wc -l
	echo "Words in project: "
	find -name '*.tex' -exec cat {} \; | wc -l

bz2:
	export fosaDir=`pwd`; cd ..; tar -c -fFoSa.tar $$fosaDir; bzip2 -f FoSa.tar; cd $$fosaDir;

gz:
	export fosaDir=`pwd`; cd ..; tar -c -fFoSa.tar $$fosaDir; gzip -f FoSa.tar; cd $$fosaDir;
	
tar:
	export fosaDir=`pwd`; cd ..; tar -c -fFoSa.tar $$fosaDir; cd $$fosaDir;
	
backup:
	export fosaDir=`pwd`; cd ..; cp -r $$fosaDir FoSaBackup; cd $$fosaDir;
	
help:
	@echo "make [option]"
	@echo "  all --> dvi-File"
	@echo "  ps"
	@echo "  pdf"
	@echo "  ps_2on1"
	@echo "  pdf_2on1"
	@echo "  bookdvi"
	@echo "  bookps"
	@echo "  bookps_2on1"
	@echo "  bookpdf"
	@echo "  bookpdf_2on1"
	@echo "  clean"
	@echo "  statistic"
	@echo "  bz2"
	@echo "  gz"
	@echo "  tar"
	@echo "  backup"
	@echo "This is the FoSa-Makefile by Adrian Freihofer 2003"

