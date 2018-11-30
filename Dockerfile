FROM mikeifomin/midas_wallet_base:v1

WORKDIR /usr/local/bin

COPY ./carebitcoind .
COPY ./carebitcoin-cli .

RUN chmod +x ./* && \
    ln carebitcoind walletd && \
    ln carebitcoin-cli wallet-cli

VOLUME ["/root/.carebitcoin"]
EXPOSE 9192

RUN walletd --help || exit $(($? == 127))
