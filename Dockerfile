FROM wfjm/cbm-daq-ci-base-deb-buster

LABEL maintainer="w.f.j.mueller@gsi.de" \
      description="CBM DAQ CI/CD - Debian Buster Build"

ENV TIME_STYLE=long-iso
ENV TIMEFORMAT='real %3lR   user %3lU   sys %3lS'

COPY install.sh /tmp/
RUN cd /tmp && ./install.sh

CMD bash
