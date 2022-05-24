#!/bin/bash
fileName="$(curl -s https://api.github.com/repos/ava-labs/avalanchego/releases/latest | grep "avalanchego-linux-amd64.*tar\(.gz\)*\"" | cut -d : -f 2,3 | tr -d \" | cut -d , -f 2)"
wget $fileName
mkdir /output/binaries/avalanche -p
tar xvf avalanchego*.tar.gz -C /output/binaries/avalanche --strip-components=1;

fileName="$(curl -s https://api.github.com/repos/ava-labs/avalanche-network-runner/releases/latest | grep "linux_amd64.tar\(.gz\)*\""  | cut -d : -f 2,3 | tr -d \" | cut -d , -f 2)"
wget $fileName
mkdir /output/binaries/avn
tar xvf avalanche-network*.tar.gz -C /output/binaries/avn
