all: README.md specimen/specimen.pdf


README.md: README.sec
	sectxt.py --markdown $^ > $@

specimen/specimen.pdf: specimen/specimen.svg
	convert $^ > $@
