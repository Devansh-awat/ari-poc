FROM ghcr.io/hackclub/ari-production:sha-0636e1c AS victim
FROM alpine:3.19
COPY --from=victim / /victim
CMD ["sh", "-c", "ls -la /victim | head -60; echo ---APP---; ls -laR /victim/app 2>/dev/null | head -80; echo ---ENV---; find /victim -maxdepth 3 -name '.env*' 2>/dev/null | head"]
