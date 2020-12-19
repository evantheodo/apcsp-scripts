
#!/bin/bash

SERVERS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for server in $SERVERS ; do
	PING=$(ping -c 1 "$server")
	PINGRESULT=$?
	if [ $PINGRESULT == 0 ] ; then
		echo "$server : alive"; echo
		continue
	else
		echo "$server : dead"; echo
		continue
	fi
done
