FROM jboss/wildfly:14.0.1.Final

USER root
RUN mkdir /dumps
VOLUME ["/dumps"]
USER jboss

COPY webapps/ /opt/jboss/wildfly/standalone/deployments

ENV JAVA_OPTS="-Xms64m -Xmx512m -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=256m -Djava.net.preferIPv4Stack=true -Djboss.modules.system.pkgs=$JBOSS_MODULES_SYSTEM_PKGS -Djava.awt.headless=true -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/dumps"
