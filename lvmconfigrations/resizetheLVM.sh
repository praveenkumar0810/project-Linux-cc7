#first --> reduce the lv02 size 
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


