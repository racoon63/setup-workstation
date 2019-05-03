FROM google/cloud-sdk:latest
LABEL maintainer='p.lubach@goreply.de'

# ssh variables
ARG ssh_prv_key
ARG ssh_pub_key

# Install needed packages
RUN apt update -y && \
    apt dist-upgrade -y && \
    apt install -y \
                    git \
                    nano \
                    wget \
                    curl \
                    vim \
                    python \
                    openssh-client
RUN pip install ansible
RUN curl -O https://releases.hashicorp.com/vagrant/2.2.3/vagrant_2.2.3_x86_64.deb && \
    apt install -y ./vagrant_2.2.3_x86_64.deb
RUN mkdir -p /root/.ssh
RUN echo $ssh_prv_key > /root/.ssh/id_ed25519
RUN echo $ssh_pub_key > /root/.ssh/id_ed25519.pub
RUN chmod 0600 /root/.ssh/id_ed25519
RUN mkdir -p /github
CMD /bin/bash