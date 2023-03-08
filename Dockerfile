FROM ocaml/opam:latest

RUN --mount=type=cache,target=/var/cache/apt \
    apt-get update && \
    apt-get install pkg-config

RUN --mount=type=cache,target=/home/opam/.opam \
    opam install utop
RUN --mount=type=cache,target=/home/opam/.opam \
     opam install ocaml-lsp-server ocamlformat
RUN --mount=type=cache,target=/home/opam/.opam \
     opam install ounit2
RUN --mount=type=cache,target=/home/opam/.opam \
     opam install ppx_inline_test
RUN --mount=type=cache,target=/home/opam/.opam \
     opam install cohttp-lwt

