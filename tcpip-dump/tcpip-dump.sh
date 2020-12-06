#!/bin/bash

DATE_TIME=$(date +%Y-%m-%d_%H-%M-%S)
SAVE_DIRPATH="/opt/tcpip-dump"
LOTATION_SEC="60"
CAP_INTERFACE="enp0s8"

if type "/usr/sbin/tshark" > /dev/null 2>&1; then

  tshark -b duration:${LOTATION_SEC} -s 0 -i ${CAP_INTERFACE} -w ${SAVE_DIRPATH}/tcpip-dump_${DATE_TIME}.pcap
else
  echo "Please install wireshark."
fi
