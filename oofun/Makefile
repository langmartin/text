oofun.html: oofun.org reveal.js Makefile
	pandoc -t revealjs -s \
	--slide-level 1 \
	-V theme=beige -V history=true \
	oofun.org > $@

reveal.js:
	echo open https://github.com/hakimel/reveal.js/archive/3.3.0.tar.gz
	tar -xzf $(HOME)/Downloads/reveal.js-3.3.0.tgz
	mv reveal.js-3.3.0 reveal.js
