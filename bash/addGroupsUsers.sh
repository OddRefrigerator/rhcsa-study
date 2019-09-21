groupadd presidents -g 2000
groupadd republicans -g 2001
groupadd democrats -g 2002

#add to group presidents
for users in ford carter reagan clinton
 do usermod $users -aG presidents
done

#add to republicans
for users in ford reagan
 do usermod $users -aG republicans
done

#add to democrats
for users in carter clinton
 do usermod $users -aG democrats
done
