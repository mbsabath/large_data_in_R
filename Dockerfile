FROM rocker/binder:3.6.3

USER root

RUN apt update && apt install -y --no-install-recommends \
  ripgrep \
  && rm -rf /var/lib/apt/lists/*

RUN install2.r --skipinstalled \
  chunked \
  fst \
  lobstr \
  vroom

USER rstudio

COPY --chown=rstudio:rstudio . ${HOME}
