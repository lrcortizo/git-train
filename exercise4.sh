#!/bin/bash

. create-commits.sh;

reset_repository;
create_commits 3 Master;

git checkout -b feature1;
create_commits 3 Feature1_;

git checkout -b feature2;
create_commits 3 Feature2_;

git checkout master;
git lg;
