#!/bin/bash

while true; do
	for i in $@; do
		echo "`date`: $i" >> srm_monitor_$(date +%d-%m-%Y).log
		curl -k $i --connect-timeout 10 2>> srm_monitor_$(date +%d-%m-%Y).log
	done

	sleep 2
done
