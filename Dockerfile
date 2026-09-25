# https://aws.amazon.com/blogs/developer/aws-cli-v2-docker-image/
# https://hub.docker.com/r/amazon/aws-cli
FROM amazon/aws-cli:latest@sha256:cd11f6e909d42f066a03e15f072853fcc19f033e343cb83b2d553e2082cbb5a7

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
