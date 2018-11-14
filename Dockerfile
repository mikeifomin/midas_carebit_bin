FROM mikeifomin/midas_coins_base

COPY ./carebitcoind /usr/local/bin/coind
COPY ./carebitcoin-cli /usr/local/bin/coin-cli

EXPOSE 9192

