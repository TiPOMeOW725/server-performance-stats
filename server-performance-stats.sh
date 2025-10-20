<<<<<<< HEAD
=======
printf "\n\n"
>>>>>>> e97280c (Improve output readability)

cpu_usage=$(top -bn1 | awk '/%Cpu/ {print 100 - $8}')
echo "CPU usage: ${cpu_usage}%"

<<<<<<< HEAD
=======
printf "\n---\n\n"

>>>>>>> e97280c (Improve output readability)
free_mem=$(free -m | awk '/Mem:/ {print $4}')
used_mem=$(free -m | awk '/Mem:/ {print $3}')
total_mem=$(free -m | awk '/Mem:/ {print $2}')
echo "Free memory(in mebibytes): ${free_mem}MiB    $(( ($free_mem*100)/$total_mem ))% From total memory"
echo "Used memory(in mebibytes): ${used_mem}MiB    $(( ($used_mem*100)/$total_mem ))% From total memory"

printf "\n---\n\n"

total_disk=$(df -h | grep "/" -w | awk '{print $2}')
used_disk=$(df -h | grep "/" -w | awk '{print $3}')
free_disk=$(df -h | grep "/" -w | awk '{print $4}')
used_disk_percentage=$(df -h | grep "/" -w | awk '{print $5}')
used_disk_percentage=${used_disk_percentage%?}
echo "Total disk size: ${total_disk}     Used:${used_disk_percentage}%    Free:$((100-${used_disk_percentage}))%"
echo "Used space: $used_disk"
echo "Free space: $free_disk"

printf "\n---\n\n"

ps -eo pid,user,%cpu,comm,time --sort=-%cpu | head -n 6
