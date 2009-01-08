#! /bin/bash

case "$1" in 
	--compile )
		latex linux.tex
		dvips linux.dvi
		ps2pdf linux.ps
	;;

	--clean )
		rm *.dvi *.ps *.out *.log *.aux
	;;

	--clean-all )
		./compile.sh --clean
		rm *.pdf
	;;

esac
