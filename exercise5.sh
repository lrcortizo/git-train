#!/bin/bash

. create-commits.sh;

reset_repository;
create_commits 10 Master;

git lg;
