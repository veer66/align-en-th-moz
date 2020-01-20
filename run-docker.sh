#!/bin/sh

docker run \
       -it \
       --rm \
       --net=host \
       -u 1000 \
       -v $(pwd):/work \
       -e HOME=/work \
       -w /work \
       veer66/moses-lisp bash
