FROM google/cloud-sdk:latest
LABEL maintainer='Patrick Lubach <p.lubach@goreply.de>'

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
                    bash-completion \
                    virtualbox \
                    virtualbox-ext-pack
# Install ansible
RUN pip install ansible
# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
#RUN wget https://releases.hashicorp.com/vagrant/2.2.3/vagrant_2.2.3_x86_64.deb -o /tmp/vagrant_2.2.3_x86_64.deb && \
#    apt install -y /tmp/vagrant_2.2.3_x86_64.deb
RUN mkdir -p /github
RUN echo 'alias ll="ls -l"' >> ~/.bashrc

COPY prepare-workstation.sh /tmp

ENTRYPOINT [ "/bin/bash" ]
CMD [ "/tmp/prepare-workstation.sh" ]