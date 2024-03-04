FROM owasp/dependency-check-action:latest

LABEL org.opencontainers.image.source ="https://github.com/git-ss19/dependency-check-github-action"
LABEL org.opencontainers.image.url="" \
      org.opencontainers.image.title="Dependency Check Github Action" \
      org.opencontainers.image.authors="git-ss19" \
      com.github.actions.name="Dependency Check" \
      com.github.actions.description="Github action to execute dependency check as part of a github workflow" \
      com.github.actions.icon="shield" \
      com.github.actions.color="red"

USER root

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]

