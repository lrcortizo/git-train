#!/bin/bash

. create-commits.sh;

reset_repository;
create_commits 3 Master;

git checkout -b feature;
create_commits 3 Feature;

git checkout master;
git lg;
