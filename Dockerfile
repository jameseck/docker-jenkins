FROM openshift/jenkins-2-centos7

ADD entrypoint.sh /
USER root
RUN \
  chmod -R 0770 /etc/pki/ca-trust/extracted && \
  chmod 0755 /entrypoint.sh
USER 1001

CMD /entrypoint.sh
