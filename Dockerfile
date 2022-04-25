FROM jenkins/jenkins:2.303.3-jdk11
RUN jenkins-plugin-cli --plugins \
        kubernetes:1.31.2 \
        pipeline-utility-steps \
        workflow-aggregator \
        git \
        configuration-as-code \
        cloudbees-folder \
        antisamy-markup-formatter \
        build-timeout \
        ssh-agent \
        timestamper \
        ws-cleanup \
        gradle \
        htmlpublisher \
        junit \
        xunit \
        jaxb \
        pipeline-github-lib \
        pipeline-stage-view \
        conditional-buildstep \
        jenkins-multijob-plugin \
        cloudbees-bitbucket-branch-source \
        parameterized-trigger \
        copyartifact \
        subversion \
        ssh-slaves \
        matrix-auth \
        pam-auth \
        ldap \
        active-directory \
        role-strategy \
        authorize-project \
        email-ext \
        emailext-template \
        mailer \
        workflow-job \
        credentials-binding \
        ignore-committer-strategy \
        cctray-xml \
        pipeline-aws \
        prometheus
        
USER root

RUN curl --insecure "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.2.47.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \ 
    && ./aws/install

USER jenkins
