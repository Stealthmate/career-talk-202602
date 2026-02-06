SOURCES := $(wildcard slides/*.md)

.ignored/main.md: ${SOURCES}
	cat slides/*.md > $@

.ignored/%: slides/%
	cp $^ $@

preview: .ignored/main.md .ignored/sapling.jpg .ignored/mental.png
	npx marp --html --theme ./theme.css -p $<

%.preview: slides/%.md
	npx marp --html --theme ./theme.css -p $<
