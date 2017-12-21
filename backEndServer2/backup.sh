#!/bin/bash

mysqldump --user=root --password=J0nsil3n NJIT > "./backupDB/$(date +"%Y_%m_%d_%I_%M_%p").sql"

lineCount=`ls ~/backupDB | wc -l`

if [ $lineCount -gt 7 ]; then
	delFile=`(ls -t ~/backupDB | tail -1)`
	echo $delfile
	rm -f ~/backupDB/$delFile
fi
 
