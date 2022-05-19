FROM jenkins/jenkins:2.319.3-jdk11
RUN jenkins-plugin-cli --plugins \
        kubernetes:1.31.3 \
        workflow-aggregator:2.6 \
        git:4.10.2 \
        configuration-as-code:1414.v878271fc496f 
USER root

RUN curl --insecure "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.2.47.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \ 
    && ./aws/install

USER jenkins
