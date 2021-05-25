FROM ocaml/opam:alpine-ocaml-4.12

# hadolint ignore=DL3004
RUN sudo apk add --no-cache linux-headers \
    && opam install ocamlbuild.0.14.0 \
    && opam install core.v0.14.1

ENV PATH="/home/opam/.opam/4.12/bin:${PATH}"