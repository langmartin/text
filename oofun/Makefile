oofun.html: oofun.org reveal.js Makefile
	pandoc -t revealjs -s \
	--slide-level 2 \
	-V theme=black \
	--highlight-style=zenburn \
	-V history=true \
	-V css=oofun.css \
	-V backgroundTransition=none \
	-V transitionSpeed=fast \
	oofun.org > $@

reveal.js:
	echo open https://github.com/hakimel/reveal.js/archive/3.3.0.tar.gz
	tar -xzf $(HOME)/Downloads/reveal.js-3.3.0.tgz
	mv reveal.js-3.3.0 reveal.js
