sd_list=$(ls /dev | grep "sd")
#echo $sd_list
for d in $sd_list; do
	dt=$(echo ${d} | grep "sda")
	#echo ${dt}
	if [[ ${dt} == "" ]] ; then
		#echo $d
		mkfs.ext4 /dev/${d}
		echo "Change FS to ext4: ${d}"
		mkdir /mnt/${d}
		mount /dev/${d} /mnt/${d}
		echo "Mounted ${d}"
	fi
done
