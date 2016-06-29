FROM sachioksg/ubuntu
MAINTAINER sachioksg <s-kono@nri.co.jp>

RUN apt-get install -y build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev libcurl4-openssl-dev
RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections && \
    echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections && \
    apt-get -y install mysql-server
RUN apt-get install -y apache2 libapache2-mod-passenger
RUN apt-get install -y imagemagick libmagick++-dev fonts-takao-pgothic
RUN apt-get install -y subversion git
RUN apt-get install -y bundler
RUN apt-get install -y libmysqlclient-dev 
RUN gem install mysql2
