SOURCES := $(wildcard slides/*.md)

.ignored/main.md: ${SOURCES}
	cat slides/*.md > $@

preview: .ignored/main.md
	npx marp --html --theme ./theme.css -p $<
