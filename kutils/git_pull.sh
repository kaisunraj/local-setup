#!/bin/bash

branch_name=$(git rev-parse --abbrev-ref HEAD)
 echo $branch_name
 git branch --set-upstream-to=origin/$branch_name $branch_name
