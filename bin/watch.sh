build(){
	pdflatex -interaction=nonstopmode $1
	# bibtex $2
	# pdflatex -interaction=nonstopmode $1
	# pdflatex -interaction=nonstopmode $1
}

# build once by default
build first/self-critique-1.tex

# watch for alterations
while inotifywait first/self-critique-1.tex; do
  build first/self-critique-1.tex
done
