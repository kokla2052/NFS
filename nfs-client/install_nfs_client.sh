#bin/bash
apt-get install nfs-common
read -e -p "Create mount point: " point
echo $(mkdir /home/$point)
ls -la /home/
read -e -p "NFS-Server IP: " server
read -e -p "Directory form server: " directory
echo $(mount $server:/srv/$directory /home/$point)
echo "Mount NFS Success"
