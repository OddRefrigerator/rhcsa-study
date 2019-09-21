mkdir /repo
mkdir /mnt/centosISO
mount /dev/sr0 /mnt/centosISO
cp /mnt/centosISO/Packages/*.* /repo

createrepo /repo
ls /repo/repodata

touch /etc/yum.repos.d/localRepos.repo

cat > /etc/yum.repos.d/localRepos.repo <<eof
[localRepo]
name=Local DVD repository
baseurl=file:///repo
enabled=1
gpgcheck=0
eof

yum clean all
