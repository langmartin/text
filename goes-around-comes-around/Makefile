gaca.html: gaca.org reveal.js Makefile
	pandoc -t revealjs -s \
	--slide-level 2 \
	-V theme=black \
	--highlight-style=zenburn \
	-V history=true \
	-V css=../css/blur.css \
	-V backgroundTransition=none \
	-V transitionSpeed=fast \
	$< > $@

version=3.8.0
download=$(HOME)/Downloads/reveal.js-$(version).tar.gz
reveal.js: $(download)
	tar -xzf $<
	mv reveal.js-$(version) reveal.js

$(download):
	open https://github.com/hakimel/reveal.js/archive/$(version).tar.gz
