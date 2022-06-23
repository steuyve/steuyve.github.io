diffgeo: diffgeo.md
	pandoc --template default.html -f markdown --mathjax -t html --standalone diffgeo.md -o diffgeo.html

update-res:
	cp ../../res/build/*.html .
