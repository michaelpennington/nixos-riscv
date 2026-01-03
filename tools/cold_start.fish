#!/usr/bin/env fish

./duo-pinmux -w A18/UART1_RX && ./duo-pinmux -w A19/UART1_TX

sleep 2
echo start >/sys/class/remoteproc/remoteproc0/state
sleep 2
echo stop >/sys/class/remoteproc/remoteproc0/state
sleep 2
echo start >/sys/class/remoteproc/remoteproc0/state
