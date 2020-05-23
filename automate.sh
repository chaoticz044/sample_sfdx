#!/bin/bash

# gh-url=$1
## Clone from github
# git clone ${gh-url}
git_name=$(echo ${gh-url} | rev | cut -d "/" -f 1 | rev | cut -d '.' -f 1)

## create scratch org
cd ${git_name}
sfdx force:org:create -f */*.conf -a my_org

##deploy metadata to scratch org
sfdx force:source:push -u my_org

##Get data from dev org

##Deploy data to scratch org

##Echo ukinam nalpasen