#!/bin/bash

if [ -f ~/.bashrc ]; then
	echo "Exists"
else
	echo "does not exist"
fi

DOTFILE_REGEX='^[^.]+$'
BACKUP_DATE=`date +%Y-%m-%d_%H-%M-%S`
for f in * ; do
	if [[ $f =~ $DOTFILE_REGEX ]] ; then
		if [ -f ~/.$f ] ; then
			BACKUP_FILENAME=".${f}.backup_${BACKUP_DATE}"
			echo "Renaming ~/.$f to $BACKUP_FILENAME"
			mv -f ~/.$f ~/$BACKUP_FILENAME
		fi
		cp $f ~/.$f
	fi
done
