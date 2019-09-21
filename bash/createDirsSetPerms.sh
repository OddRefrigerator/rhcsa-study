mkdir -p /share/presidents
chown root:presidents /share/presidents
chmod 3671 /share/presidents

mkdir -p /share/presidents/republicans
chown root:republicans /share/presidents/republicans
chmod u=rw,g=rwxs,o=xt /share/presidents/republicans 

mkdir -p /share/presidents/democrats
chown root:democrats /share/presidents/democrats
chmod 3671 /share/presidents/democrats

semanage fcontext -at "public_content_rw_t" "/share/presidents(/.*)?"
restorecon -Rvv /share/presidents
