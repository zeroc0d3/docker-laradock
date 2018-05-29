FROM dockerframework/core-base:latest

# ================================================================================================
#  Inspiration: Docker Alpine (https://github.com/bhuisgen/docker-alpine)
#               Boris HUISGEN <bhuisgen@hbis.fr>
# ================================================================================================
#  Core Contributors:
#   - Mahmoud Zalt @mahmoudz
#   - Bo-Yi Wu @appleboy
#   - Philippe Trépanier @philtrep
#   - Mike Erickson @mikeerickson
#   - Dwi Fahni Denni @zeroc0d3
#   - Thor Erik @thorerik
#   - Winfried van Loon @winfried-van-loon
#   - TJ Miller @sixlive
#   - Yu-Lung Shao (Allen) @bestlong
#   - Milan Urukalo @urukalo
#   - Vince Chu @vwchu
#   - Huadong Zuo @zuohuadong
# ================================================================================================

MAINTAINER "Laradock Team <mahmoud@zalt.me>"

ENV TERRAFORM_VERSION=0.11.7

RUN curl -sSL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o /tmp/terraform.zip && \
    unzip /tmp/terraform.zip -d /usr/bin && \
    rm /tmp/terraform.zip && \
    apk del zip && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["terraform"]
CMD []

VOLUME ["/data"]
WORKDIR /data
