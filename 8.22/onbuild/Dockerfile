FROM quay.io/workato/sentry:8.22

RUN apt-get update && apt-get install -y --no-install-recommends \
        libxmlsec1-dev \
        git \
        pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/sentry

# Add WORKDIR to PYTHONPATH so local python files don't need to be installed
ENV PYTHONPATH /usr/src/sentry
ONBUILD COPY . /usr/src/sentry

# Hook for installing additional plugins
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi

# Hook for installing a local app as an addon
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi

# Hook for staging in custom configs
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi \
	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
