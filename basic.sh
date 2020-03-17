#!/bin/bash

# functions for bug bounty
function mkb(){
  mkdir {InfoGathering, Mapping, Discovery, Explotation, POCs}
}

function openPorts(){
  tput civis
  for port in {seq 1 65535}; do
    timeout 1 bash -c 'echo "" < /dev/tcp/$1/$port' 2>/dev/null && 'Port [ $port ] - [Open]'
  done
  wait
  tput cnorm
}

openPorts
