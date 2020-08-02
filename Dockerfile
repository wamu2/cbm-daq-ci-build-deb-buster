FROM wfjm/cbm-daq-ci-base-deb-buster

COPY install.sh /tmp/
RUN cd /tmp && ./install.sh

CMD bash
