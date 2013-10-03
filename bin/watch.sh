build(){
	pdflatex -interaction=nonstopmode $1
	# bibtex $2
	# pdflatex -interaction=nonstopmode $1
	# pdflatex -interaction=nonstopmode $1
}

# build once by default
build first/critique.tex

# watch for alterations
while inotifywait first/critique.tex; do
  build first/critique.tex
done
