FROM golang:1.13.1

RUN apt update -y
RUN apt install ruby-full
RUN gem install thin
RUN gem install toto
RUN git clone git@github.com:soggiest/testBlog.git weblog

WORKDIR /weblog

ENTRYPOINT ["thin", "start", "-R", "config.ru"]
