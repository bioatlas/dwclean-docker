FROM perl:latest
MAINTAINER umeldt

RUN curl -L http://cpanmin.us | perl - App::cpanminus

RUN git clone https://github.com/umeldt/dwc.git
RUN cd dwc && cpanm --installdeps .
RUN cd dwc && perl Makefile.PL && make && make install

RUN git clone https://github.com/umeldt/dwclean.git
RUN cd dwclean && cpanm --installdeps .
RUN cd dwclean && perl Makefile.PL && make && make install

CMD dwclean
