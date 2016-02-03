#!/bin/sh 
 
identifier="MyRootManifest"
hostname=$( scutil --get HostName )
submiturl="https://yourURL.xyz"
certificate="Path to pkcs12"
manifest_subdir=$identifier"_client"

/usr/bin/curl --max-time 5 --silent --get \
	--cert "$certificate" \
       	-d "hostname=$hostname" \
	-d "identifier=$identifier" \
       	"$submiturl"
 	
dentifier_path=$( echo "$IDENTIFIER" | sed 's/\/[^/]*$//' ); 
 	
/usr/bin/defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "$manifest_subdir/$hostname"
