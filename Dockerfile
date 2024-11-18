FROM registry.redhat.io/3scale-amp2/system-rhel8:3scale2.15

USER root

COPY ./oracle-client-files/instantclient-basic*-linux.*.zip \
     ./oracle-client-files/instantclient-sdk-linux.*.zip \
     ./oracle-client-files/instantclient-odbc-linux.*.zip \
     /opt/system/vendor/oracle/

ENV LD_LIBRARY_PATH=/opt/oracle/instantclient/ \
    ORACLE_HOME=/opt/oracle/instantclient/ \
    DB=oracle \
    TZ=utc \
    NLS_LANG=AMERICAN_AMERICA.UTF8

RUN dnf install wget unzip make ruby-devel gcc gcc-c++ redhat-rpm-config libaio -y \
    && ./script/oracle/install-instantclient-packages.sh \
    && ln -s /usr/lib64/libnsl.so.2 /usr/lib64/libnsl.so.1 \
    && DB=oracle bundle install --jobs $(grep -c processor /proc/cpuinfo) --retry=5

USER 1001
