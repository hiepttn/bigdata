#!/bin/bash
HOST='10.50.8.110'
USER='funring_up'
PASS='funring12345'
SOURCEFOLDER='/'
TARGETFOLDER='/home/chargefile/dongboco/'

ftp -in $HOST <<EOF
quote USER $USER
quote PASS $PASS
cd $SOURCEFOLDER
lcd $TARGETFOLDER
#dung lenh put single file hoac lenh mput multiple files
#mirror -R -n --verbose $TARGETFOLDER $SOURCEFOLDER
quit
EOF
