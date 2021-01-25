#!/bin/sh -l

curl -LSfs https://japaric.github.io/trust/install.sh | \
    sh -s -- --git daynin/fundoc
fundoc

