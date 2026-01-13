#!/usr/bin/bash

repo_owner="$1"
repo_name="$2"
token="$3"

local_url="https://api.github.com/repos/${repo_owner}/${repo_name}/collaborators"

function fetch_collaborators(){
    curl -L \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $token" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "$local_url"
}git 

read_users=$(fetch_collaborators)

echo "$read_users" | jq -r '.[] | select(.permissions.admin == false) | .login'

