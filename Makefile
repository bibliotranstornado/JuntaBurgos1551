font_name=RotundaJuntaBurgos1551.otf
all: README.md README.es.md specimen/specimen.pdf

README.md: README.sec
	sectxt.py --markdown $^ > $@

README.es.md: README.es.sec
	sectxt.py --markdown $^ > $@

specimen/specimen.pdf: specimen/specimen.svg
	convert $^ $@

install: 
	cp fonts/${font_name} ~/.local/share/fonts
uninstall: 
	rm ~/.local/share/fonts/${font_name}
rebuild_font_cache:
	fc-cache -f -v
	fc-list | grep "Junta"

