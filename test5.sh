#!/bin/bash

exec "./report5.sh" "56" "14"
if [ $? -ne 14 ]
then
echo  "計算ミス"
exit 1
fi
