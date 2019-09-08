#fix Cgroup namespace: required
mkdir /dev/cpuset
mount -t cpuset cpuset /dev/cpuset

touch /home/phablet/.first-setup-done
exit
