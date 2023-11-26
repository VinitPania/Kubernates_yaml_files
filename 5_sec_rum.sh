#!/bin/bash
command1=top -b -n 1| grep "Cpu(s)"
while true; do
    crrent_time=($date +%s)
    output=$($command1)
    echo "$current_time: $output">>CPU_log.txt
    free -m >>memory_log.txt
    sleep 5
done