#!/bin/bash -v

ocamllex scanner.mll # create scanner.ml
ocamlyacc parser.mly # create parser.ml and parser.mli
ocamlc -c ast.mli # compile AST types
ocamlc -c parser.mli # compile parser types
ocamlc -c scanner.ml # compile the scanner
ocamlc -c parser.ml # compile the parser
ocamlc -o rhythm parser.cmo scanner.cmo 