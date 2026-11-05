FROM registry.tier2.infra.hackclub.com/orchard/ysws-ari-1-ari:v20261102T19420
RUN echo "PULL-OK-ARI" && ls /app | head -40
