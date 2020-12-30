all: menukeyz.sty menukeyz.pdf
doc: menukeyz.pdf
menukeyz.pdf: menukeyz.dtx
	pdflatex -shell-escape menukeyz.dtx
menukeyz.sty: menukeyz.ins menukeyz.dtx
	tex menukeyz.ins
.PHONY: install clean
install: menukeyz.sty
	install menukeyz.sty ${HOME}/texmf/tex/
clean:
	rm -rf menukeyz.aux menukeyz.fdb_latexmk menukeyz.fls menukeyz.glo 
	rm -rf menukeyz.idx menukeyz.ilg menukeyz.ind menukeyz.log 
really-clean: clean
	rm -rf menukeyz.sty menukeyz.pdf
