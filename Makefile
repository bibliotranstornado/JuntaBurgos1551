all: README.md specimen/specimen.pdf


README.md: README.sec
	sectxt.py --markdown $^ > $@

specimen/specimen.pdf: specimen/specimen.svg
	convert $^ $@

install: 
	cp fonts/Junta-Burgos-1551-Matriz.otf ~/.local/share/fonts
uninstall: 
	rm ~/.local/share/fonts/Junta-Burgos-1551-Matriz.otf 

