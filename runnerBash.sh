#!/bin/bash
#curl https://api.coinmarketcap.com/v1/ticker/ripple/ -o output.txt  
while [ 1 ]
do 
price_usd=$(
    curl -s https://api.coinmarketcap.com/v1/ticker/ripple/ |
    perl -n0777E '/"price_usd"\s*:\s*"(.*?)"/s and say $1'
)
fbdigits $price_usd 
sleep 5
done
