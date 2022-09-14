FROM ossperfectworld/perfect-world-glinkd as pw_glinkd

WORKDIR /home

RUN apt update
RUN apt install -y mariadb-client


RUN apt install -y software-properties-common build-essential

RUN dpkg --add-architecture i386
RUN apt update


# RUN add-apt-repository ppa:openjdk-r/ppa

# RUN apt update

RUN apt install -y default-jre default-jdk curl libsvn-java unzip git
COPY entrypoint.sh /home
ENTRYPOINT ["sh", "/home/entrypoint.sh"]
CMD ["/home/glinkd", "/home/gamesys.conf", "1"]