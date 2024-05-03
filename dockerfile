FROM alpine

WORKDIR /app
COPY report.sh report.sh

ENTRYPOINT [ "/bin/sh", "report.sh" ]