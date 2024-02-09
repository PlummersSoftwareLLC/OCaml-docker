FROM ocaml/opam:alpine-ocaml-5.1

USER root

# hadolint ignore=DL3004
RUN apk add --no-cache linux-headers

USER opam

RUN opam install ocamlbuild \
    && opam install core \
    && opam install core_unix

ENV PATH="/home/opam/.opam/5.1/bin:${PATH}"