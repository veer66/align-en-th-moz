#!/bin/sh

if [ -e .sbclrc ] && [ -e quicklisp ]
then
    echo "Quicklisp exists"
else
    curl -O https://beta.quicklisp.org/quicklisp.lisp && \
	sbcl --load quicklisp.lisp \
	     --eval '(quicklisp-quickstart:install)' \
	     --eval '(ql-util:without-prompting (ql:add-to-init-file))' \
	     --quit &&
	sbcl --eval '(ql:quickload :alexandria)' \
             --eval '(ql:quickload :cxml)' \
	     --quit 
fi
