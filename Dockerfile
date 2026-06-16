# https://aws.amazon.com/blogs/developer/aws-cli-v2-docker-image/
# https://hub.docker.com/r/amazon/aws-cli
FROM amazon/aws-cli@sha256:e4e5fb512155339dd992a4ce84d870ef48c9b96f3757d4993b8e5a80b7107889 # latest

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
