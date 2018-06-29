FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    git \
    jq \
    tree \
    nano

RUN curl -s -k -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | \
    tar -zx && \
    mv cf /usr/local/bin

RUN cf add-plugin-repo CF-Community https://plugins.cloudfoundry.org && \
    cf install-plugin -f -r CF-Community "report-users" && \
    cf install-plugin -f -r CF-Community "copyenv" && \
    cf install-plugin -f -r CF-Community "top" && \
    cf install-plugin -f -r CF-Community "autopilot" && \
    cf install-plugin -f -r CF-Community "blue-green-deploy" && \
    cf install-plugin -f -r CF-Community "network-policy" && \
    cf install-plugin -f -r CF-Community "Targets" && \
    cf install-plugin -f -r CF-Community "deploy" && \
    cf install-plugin -f -r CF-Community "copy" && \
    cf install-plugin -f -r CF-Community "whoami-plugin" && \
    cf install-plugin -f -r CF-Community "sync" && \
    cf install-plugin -f -r CF-Community "do-all" && \
    cf install-plugin -f -r CF-Community "get-events" && \
    cf install-plugin -f -r CF-Community "docker-usage" && \
    cf install-plugin -f -r CF-Community "antifreeze" && \
    cf install-plugin -f -r CF-Community "wildcard_plugin"
