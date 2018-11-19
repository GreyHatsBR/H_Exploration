#!/bin/bash
if [ "$1" == "" ]
then
echo "UTILITÁRIO PARA DESVENDAR HOSTS ATIVOS NA REDE"
echo "Como usar: $0 192.168.0 (Seu ip)"
else
for host in {1..254}; do
ping -c1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4
done
fi
