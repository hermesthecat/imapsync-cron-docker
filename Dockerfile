FROM gilleslamiral/imapsync
MAINTAINER afalter

#ENV HOST1=source_server
#ENV USER1=source_user
#ENV HOST2=target_server
#ENV USER2=target_user

VOLUME /config

USER root:root

# Install cron
RUN apt-get update && apt-get install -y cron

# tzdata for timzone
RUN apt-get install -y tzdata
 
# timezone env with default
ENV TZ Europe/Istanbul

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
