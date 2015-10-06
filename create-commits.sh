#!/bin/bash

reset_repository() {
	git checkout master;
	git branch | grep -v "master" | xargs git branch -D;
	git reset --hard `git rev-list --parents HEAD | egrep "^[a-f0-9]{40}$"`;
}

create_commit() {
	newfile="${1}.txt";
	echo "$1" > ${newfile};

	git add ${newfile};
	git commit -m "$1";
}

create_commits() {
	for ((i=0; i<$1; i++)) {
		create_commit $2$i;
	}
}
