FROM python:3-alpine

ENV AWSCLI_VERSION='1.32.7'

RUN python3 -m pip --no-cache-dir install awscli==${AWSCLI_VERSION}
RUN python3 -m pip --no-cache-dir install awscli_plugin_endpoint

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "help" ]
