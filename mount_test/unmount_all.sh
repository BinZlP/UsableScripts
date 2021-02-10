sd_list=$(ls /mnt | grep "sd")
for d in ${sd_list}; do
	dt=$(echo ${d} | grep "sda")
	if [[ ${dt} == "" ]] ; then
		umount /mnt/$d
		rmdir /mnt/$d
	fi
done
