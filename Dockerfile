FROM gilleslamiral:imapsync
MAINTAINER afalter

ENV HOST1
ENV USER1
ENV HOST2
ENV USER2

VOLUME /config

# Install cron
RUN apt-get update && apt-get install -y cron

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
