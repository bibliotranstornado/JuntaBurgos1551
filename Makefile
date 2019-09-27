all: README.md README.es.md specimen/specimen.pdf

README.md: README.sec
	sectxt.py --markdown $^ > $@

README.es.md: README.es.sec
	sectxt.py --markdown $^ > $@

specimen/specimen.pdf: specimen/specimen.svg
	convert $^ $@

install: 
	cp fonts/Junta-Burgos-1551.otf ~/.local/share/fonts
uninstall: 
	rm ~/.local/share/fonts/Junta-Burgos-1551.otf 

