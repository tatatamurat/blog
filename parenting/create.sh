#! /bin/sh

echo "test"

echo basename $0
if [ $# -ne 1 ]; then
	echo "argument error."
	exit 1
fi

echo "argument : " $1

for i in `seq 0 6`; do
	filename=`date -d "$1 $i days" "+%Y%m%d"`kids1.md
	cp ./template.md ./$filename
done

exit 0
