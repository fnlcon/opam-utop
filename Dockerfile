FROM ocaml/opam:latest

RUN opam install utop \
    opam install ocaml-lsp-server ocamlformat \
    opam install ounit2 \
    opam install ppx_inline_test
