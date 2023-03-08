FROM ocaml/opam:latest

RUN opam install utop
RUN opam install ocaml-lsp-server ocamlformat
RUN opam install ounit2
RUN opam install ppx_inline_test
RUN opam install cohttp-lwt
