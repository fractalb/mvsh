#! /bin/sh

#echo number of arguments is $#
INFO_FILE=".rename-info"
if [ $# -eq 2 ] && [ -d "$1" ] && [ ! -d "$2" ]
then
    mv -i "$@"
    if [ $? -eq 0 ]
    then
        echo "renamed from $1 --> $2" >> "$2/$INFO_FILE" 
	tail -n 4 "$2/$INFO_FILE"
    fi
else
    mv -i "$@"
fi
