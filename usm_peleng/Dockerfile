FROM perl
MAINTAINER borin jgrekov@gmail.com

ENV PERL_MM_USE_DEFAULT=1
RUN cpan URI LWP::UserAgent JSON Net::Telnet Net::SNMP

CMD ["perl", "/opt/usm_peleng/usm_peleng.pl"]
