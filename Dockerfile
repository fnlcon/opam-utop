FROM ocaml/opam:latest

RUN --mount=type=cache,target=/var/cache/apt \
    sudo apt-get update && \
    sudo apt-get install -y pkg-config

RUN \
    opam install utop \
    ocaml-lsp-server ocamlformat \
    ounit2 \
    ppx_inline_test \
    cohttp-lwt \
    qcheck

