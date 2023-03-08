FROM ocaml/opam:latest

RUN --mount=type=cache,target=/var/cache/apt \
    sudo apt-get update && \
    sudo apt-get install -y pkg-config

RUN \
    opam install utop
RUN \
     opam install ocaml-lsp-server ocamlformat
RUN \
     opam install ounit2
RUN \
     opam install ppx_inline_test
RUN \
     opam install cohttp-lwt

