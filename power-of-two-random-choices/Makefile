paper = randos
reveal = 3.6.0

$(paper).html: $(paper).org reveal.js Makefile
	pandoc -t revealjs -s \
	--slide-level 2 \
	-V theme=black \
	--highlight-style=zenburn \
	-V history=true \
	-V css=blur.css \
	-V backgroundTransition=none \
	-V transitionSpeed=fast \
	$(paper).org > $@

reveal.js:
	open https://github.com/hakimel/reveal.js/archive/$(reveal).tar.gz
	tar -xzf $(HOME)/Downloads/reveal.js-$(reveal).tar.gz
	mv reveal.js-$(reveal) $@
