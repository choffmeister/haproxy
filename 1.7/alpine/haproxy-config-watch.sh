#!/bin/sh

while true; do
  # wait for config to change
  inotifywait /usr/local/etc/haproxy/haproxy.cfg -e MODIFY

  # wait a sec
  sleep 1

  # signal haproxy to reload the config
  kill -HUP 1
done
