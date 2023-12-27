FROM amazonlinux:2023

ARG HADOLINT_VERSION=2.12.0

RUN dnf update -y && \
    dnf clean all

RUN curl -L https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64 \
      -o /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint
