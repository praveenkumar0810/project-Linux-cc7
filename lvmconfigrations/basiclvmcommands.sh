fdisk /dev/sdb	#create a partison for the disk as sdb1
fdisk /dev/sdv	#create a partison for the disk as sdc1
pvcreate /dev/sdb1	#create physical volume the partion 
pvcreate /dev/sdc1	#create physical volume the partion 
lsblk 				#list all the block devices 
vgcreate vg00 /dev/sdb1 #first of all lets create a voumegroup from the partion sdb1 
vgextend vg00 /dev/sdc1	#and lets extent the vloume group vg00 by sdc1 size  
vgdisplay 
vgs

#CREATE LVM COMMANDS 
lvcreate -n lv01 -l 50%FREE vg00	
#now we are creating lv01 form the voulme group vg00 
#by 50% of its size , now we have balance 50% for lv02 

# where ,
# n - name for the logicalvolume 
# l - size for the lv in percentage or L - size by Gb
# vg00 - finnaly the vloumegroup name

lvcreate -n lv02 -l 100%FREE vg00	
#now we using the 100% because the first half of vg is occupied ,
# so the balance 100% is for lv02


lvs
lvdisplay 


mkfs.ext4 /dev/vg00/lv01 
#make filesystem ext4 format for lv01 , which lives in volumegroup vg00
mkfs.ext4 /dev/vg00/lv02 
#make filesystem ext4 format for lv02 , which lives in volumegroup  vg00

partprobe 
#by this above command we notify or acknowledge the kernal 
# that we done some changes in the filesystem


mount /dev/vg00/lv01 /data/lv01
mount /dev/vg00/lv02 /data/lv02
#then we have to mount the volumes in the folder to use



#finally we need to change the entries in the #/etc/fstab , so for every time centos box get rebooted 
# the filesystems will be automatically mounted
/dev/mapper/vg00-lv01	/data/lv01	ext4	defaults        0  0	
/dev/mapper/vg00-lv02	/data/lv02	ext4	defaults        0  0
