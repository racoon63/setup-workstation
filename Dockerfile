FROM google/cloud-sdk:latest
LABEL maintainer='Patrick Lubach <p.lubach@goreply.de>'

# ssh variables
#ARG ssh_prv_key
#ARG ssh_pub_key
#ENV SSH_AGENT_PID='eval "$(ssh-agent -s)"'

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
                    openssh-client \
                    bash-completion
RUN pip install ansible
#RUN wget https://releases.hashicorp.com/vagrant/2.2.3/vagrant_2.2.3_x86_64.deb -o /tmp/vagrant_2.2.3_x86_64.deb && \
#    apt install -y /tmp/vagrant_2.2.3_x86_64.deb
RUN mkdir -p /github
RUN echo 'alias ll="ls -l"' >> ~/.bashrc

COPY prepare-workstation.sh /tmp

ENTRYPOINT [ "/bin/bash" ]
CMD [ "/tmp/prepare-workstation.sh" ]