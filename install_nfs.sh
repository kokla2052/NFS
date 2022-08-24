#bin/bash
apt-get install nfs-server
read -e -p "Create directory: " directory
echo $(mkdir /srv/$directory)
chmod 777 /srv/$directory
ls -la /srv/
#client=\*
read -e -p "Input IP_Client(Default ALL): " client
#client=$client
echo '/srv/'$directory' '$client'(rw,sync,no_subtree_check)' >> /etc/exports
systemctl restart nfs-kernel-server
