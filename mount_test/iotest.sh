sd_list=$(ls /mnt | grep "sd")
#echo $sd_list
for d in $sd_list; do
	#dt=$(echo ${d} | grep "sda")
	if [[ ${dt} == "" ]] ; then
		echo "---"
		echo "Start testing IO: ${d}"
		echo "---"
		fio --group_reporting --name=test --directory=/mnt/${d} --numjobs=1 --size=4GB --bs=128MB --direct=1 --fsync=1 --ioengine=libaio --iodepth=1  --rw=read
		echo ""
		echo "ls: /mnt/${d}"
		ls -al /mnt/${d}
		echo ""
		echo ""
	fi
done
