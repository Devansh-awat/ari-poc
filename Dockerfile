FROM registry.tier2.infra.hackclub.com/orchard/ysws-hcai-support-bot-nephthys:v20261105T06565
RUN echo "OWN-PULL-OK" && ls /app 2>/dev/null | head -20
