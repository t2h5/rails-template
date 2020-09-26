#!/bin/bash

read -p 'describe project name by kebab-case: ' project
echo "replacing project name to $project ..."
git grep -l 'rails-template' -- ':!internal' \
  | xargs sed -i '' -e "s/rails-template/$project/g"
git grep -l 'rails_template' -- ':!internal' \
  | xargs sed -i '' -e "s/rails_template/$(echo $project | tr '-' '_')/g"
