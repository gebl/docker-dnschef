FROM alpine

RUN apk update

RUN apk add python
RUN apk add py-pip
RUN apk add wget
RUN pip install IPy
RUN pip install dnslib
RUN wget http://thesprawl.org/media/projects/dnschef-0.3.zip
RUN unzip dnschef-0.3.zip

EXPOSE 53
EXPOSE 53/udp

ADD runnit.sh /
RUN chmod 755 runnit.sh
ADD dnschef.ini.tmpl /

CMD /runnit.sh
