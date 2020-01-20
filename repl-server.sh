#!/bin/sh

sbcl --eval "(ql:quickload 'swank)"
     --eval "(swank:create-server)"
