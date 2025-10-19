free_mem=$(free -m | awk '/Mem:/ {print $4}')
used_mem=$(free -m | awk '/Mem:/ {print $3}')
total_mem=$(free -m | awk '/Mem:/ {print $2}')
echo "Free memory(in mebibytes): ${free_mem}MiB    $(( ($free_mem*100)/$total_mem ))% From total memory"
echo "Used memory(in mebibytes): ${used_mem}MiB    $(( ($used_mem*100)/$total_mem ))% From total memory"
