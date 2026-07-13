FROM nginx:1.30.3-alpine@sha256:0d3b80406a13a767339fbe2f41406d6c7da727ab89cf8fae399e81f780f814d1

LABEL org.opencontainers.image.title="Viewloom"
LABEL org.opencontainers.image.description="Privacy-friendly, self-hosted YouTube analytics demo"
LABEL org.opencontainers.image.source="https://github.com/sc0528/viewloom"
LABEL org.opencontainers.image.licenses="MIT"

COPY index.html /usr/share/nginx/html/index.html
COPY dashboard/ /usr/share/nginx/html/dashboard/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/dashboard/ || exit 1
