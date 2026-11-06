FROM registry.tier2.infra.hackclub.com/orchard/ysws-ari-1-ari:v20261102T19431 AS victim
FROM alpine:3.19
COPY --from=victim / /victim
CMD ["sh", "-c", "ls -la /victim | head -50"]
