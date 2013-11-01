build(){
	pdflatex -interaction=nonstopmode $1
	# bibtex $2
	# pdflatex -interaction=nonstopmode $1
	# pdflatex -interaction=nonstopmode $1
}

# build once by default
build second/critique.tex

# watch for alterations
while inotifywait second/critique.tex; do
  build second/critique.tex
done
