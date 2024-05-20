ARG DISTRIBUTION_ID
ARG DISTRIBUTION_CODENAME

FROM ${DISTRIBUTION_ID}:${DISTRIBUTION_CODENAME}

ARG DEBIAN_FRONTEND=noninteractive
ARG DISTRIBUTION_ID
ARG DISTRIBUTION_CODENAME
ENV DISTRIBUTION_ID ${DISTRIBUTION_ID}
ENV DISTRIBUTION_CODENAME ${DISTRIBUTION_CODENAME}

RUN set -eux; \
    apt-get -y -o APT::Immediate-Configure=false update; \
    apt-get -y -o APT::Immediate-Configure=false install \
        pkg-config \
        make \
        automake \
        gcc \
        autoconf \
        bash \
        libjansson-dev \
        libyaml-dev \
        libseccomp-dev \
        libxml2-dev \
        gdb \
        python3-docutils \
        libpcre2-dev \
        findutils \
        diffutils \
        lcov \
        git \
    ;

COPY bin/ /usr/local/bin/
