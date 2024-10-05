FROM docker:cli
COPY --from=mikefarah/yq /usr/bin/yq /usr/bin/yq
COPY --from=ghcr.io/jqlang/jq /jq /usr/bin/jq
ADD rootfs /
ENTRYPOINT [ "/docker-entrypoint.sh" ]
