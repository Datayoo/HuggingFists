FROM alpine:jre1.8
RUN addgroup -g 1000 -S datayoo && adduser datayoo -u 1000 -D -S -s /bin/bash -G datayoo
USER datayoo
CMD /home/datayoo/scripts/startup.sh
#CMD tail -f /dev/null
