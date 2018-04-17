#!/bin/sh

# example script on how to compile a LaTeX document
# run this script from within your document folder

# Example:
# $ source compile.sh -pvc my_doc.tex


VERSION="v0.1";

# normal run
docker run -it --user="$(id -u):$(id -g)" \
       -v ${PWD}:/home/lab felix11h/docker-texlive-2015:$VERSION \
       -pdf $@

# # with shell-escape
# docker run -it --user="$(id -u):$(id -g)" \
#        -v ${PWD}:/home/lab felix11h/docker-texlive-2015:$VERSION \
#        -e "$pdflatex=q/pdflatex %O -shell-escape %S/" \
#        -pdf $@


echo ""
echo ""
echo "Using TeX Live 2015 Docker image, version "$VERSION"."
echo ""
echo ""


