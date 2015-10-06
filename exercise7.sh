#!/bin/bash

. create-commits.sh;

reset_repository;
git checkout remote-feature;

git reset --hard HEAD^^

git lgr;
