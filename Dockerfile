FROM ubuntu:latest

RUN apt update && apt install gpg -y \ 
    && apt install wget -y \
    && apt-get install -y lsb-release \
    && apt-get clean all

RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg >/dev/null
RUN gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

RUN apt update && apt install vault -y

RUN mkdir -p vaultstart
RUN mkdir -p vault
RUN chmod -R 777 vault
RUN chmod -R 777 vaultstart

USER vault

ADD config.hcl /vaultstart/config.hcl
ADD start-vault.sh /vaultstart/start-vault.sh

CMD ["sh","./vaultstart/start-vault.sh"]