FROM ocaml/opam:latest

RUN opam install utop
RUN opam install ocaml-lsp-server ocamlformat 
