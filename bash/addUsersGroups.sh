useradd tester -u 2004
useradd ford -u 2005
useradd carter -u 2006 -s /bin/tcsh
useradd reagan -u 2007
useradd clinton -u 2008 -e $(date -d"+20 days" +%D)

for users in tester ford carter reagan clinton
  do echo "linuxacc" | passwd --stdin $users
done
