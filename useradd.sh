#!/bin/bash
adduser deploy
passwd -l deploy
cp /etc/sudoer ~/sudoer
echo "deploy ALL=NOPASSWD" >> ~/sudoer
mv ~/sudoer /etc/
su - deploy
mkdir .ssh
chmod 700 .ssh
touch .ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDO1JS2EPhQfO6hYbYM4RiP5ZrqJQPXp+Rt9P9w4DYuspfdjj+3hDGFh+YcieC6i84wfpbeboxQuqGwwkf+fMkmTpFgFJPlYDrnLqse9C5ZuCR1qITu9SamJmeJcAwiYTcEtagrAXxyYiaLPCxTjkMVBUXLPBEHtLe4jYdDSOjpohQtVTY2XRHLPnjCGOWc5D7RBBSEtF3cssGv7+XWdOZEJxMZ68ZxubFgCS1FrVCJZ2WE+FnRMDl9qo9oc0EokBFeZzZk3hQLTpvN7mcUr2G4o33gbaBMMhXMHqosXCXTUTQDBA4jUT76DtbKZjsxKs+AnF8KgzvHm7Y1TZeGgwkT andrew@alltech1.com" >> ~/.ssh/authorized_keys
chmod 600 .ssh/authorized_keys
exit