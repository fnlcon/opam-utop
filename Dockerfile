FROM ocaml/opam:latest

RUN --mount=type=cache,target=/var/cache/apt \
    sudo apt-get update && \
    sudo apt-get install -y pkg-config

RUN --mount=type=cache \
    opam install utop
RUN --mount=type=cache \
     opam install ocaml-lsp-server ocamlformat
RUN --mount=type=cache \
     opam install ounit2
RUN --mount=type=cache \
     opam install ppx_inline_test
RUN --mount=type=cache \
     opam install cohttp-lwt

