FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y supervisor pptp-linux iptables traceroute

ADD start.sh /start.sh && chmod +x /start.sh && touch /var/log/testfile

CMD tail -f /var/log/testfile
