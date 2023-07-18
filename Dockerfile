FROM ghcr.io/loft-sh/devspace-containers/go:1.20-alpine

RUN echo "Customize me!" > $HOME/custom.txt
