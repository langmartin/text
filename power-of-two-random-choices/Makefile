paper  = randos
fmt    = org
reveal = 3.6.0

$(paper).html: $(paper).$(fmt) reveal.js Makefile style.css
	pandoc -t revealjs -s \
	--slide-level 2 \
	-V theme=black \
	--highlight-style=zenburn \
	-V history=true \
	-V css=style.css \
	-V backgroundTransition=none \
	-V transitionSpeed=fast \
	$< > $@

reveal.js:
	open https://github.com/hakimel/reveal.js/archive/$(reveal).tar.gz
	tar -xzf $(HOME)/Downloads/reveal.js-$(reveal).tar.gz
	mv reveal.js-$(reveal) $@
