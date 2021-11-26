#!/bin/bash


echo "~~~~~~~~~WELCOME TO IUG3~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will do a html       ~"
echo "~ parsing                        ~"
echo "~                                ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$1" == "" ] 

then
        echo "Type the goal link"

else 

echo " DISCOVERING HOSTS ... "
echo "=========================================================================================="


wget $1 2> /dev/null
grep "href" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > lista
for url in $(cat lista)

do
host $url | grep "has address"  | sed 's/has address / IP  /';
done


fi

echo "=========================================================================================="
                                                                                                      
