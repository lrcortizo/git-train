#!/bin/bash

. create-commits.sh;

reset_repository;
create_commits 3 Master;

git checkout -b feature HEAD~3;
create_commits 3 Feature;

git checkout master;
git lg;
