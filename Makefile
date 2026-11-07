INPUT = research_paper.md
OUTPUT = research_paper.pdf

all:
	pandoc $(INPUT) -o $(OUTPUT) \
		--pdf-engine=xelatex \
		-V geometry:margin=1in \
		-V fontsize=12pt \
		-V linestretch=2 \
		-V mainfont="Times New Roman"

clean:
	rm -f $(OUTPUT)
