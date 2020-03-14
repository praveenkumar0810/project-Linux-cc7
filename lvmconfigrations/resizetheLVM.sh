try#first --> reduce the lv02 size 
# form lv02 (12.5 GB ) to lv02 (6 GB )

#secondly --> increae the lv01 size 
# form lv02 (12.5 GB ) to lv02 (18.5GB)


# initially defrag the vloume 
e4defrag /dev/vg00/lv02 
# step 1 -> umount the vloume 
umount /dev/vg00/lv02
# if not chekc for lsof <volume name>
lsof /dev/vg00/lv02
kill -9 <pid of vloume>


#  hash the entrin /etc/fstab file
#check the volume using e2fsck 
e2fsck -f /dev/vg00/lv02 


#resize the filesystem size 
resize2fs /dev/vg00/lv02 6G



# finally resize the lv 
lvreduce -L 6G -n /dev/vg00/lv02

# mount the volume 
mount /dev/vg00/lv02 /data/lv02

lsblk #done with the  reduction of lv02 size to 6GB
lvdisplay

#############################################
#############################################

# now lets increce the size of the lv01 by balance 6.5 gb

# porcedure

# defrag the vloume lv01
e4defrag /dev/vg00/lv01 

#unmount the vloume as usual
umount /dev/vg00/lv01


#hash the entry in the fstab
vim /etc/fstab 

partprobe 
#by this above command we notify or acknowledge the kernal 
# that we done some changes in the filesystem


df -h
lsblk 

lvextend -L +6.50G /dev/vg00/lv01
# in this we are extending the lv first ans then resizing the filesystem

#check the volume using e2fsck 
e2fsck -f /dev/vg00/lv01

#resize the filesystem size 
resize2fs /dev/vg00/lv01

lsblk 
mount /dev/vg00/lv01 /data/lv01
vim /etc/fstab 
lsblk 

