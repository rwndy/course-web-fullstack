#!/bin/bash

# ------------------------------------------------------------------------------
# Automate repo template generation
# ------------------------------------------------------------------------------
# 1. Create GitHub API token
# 2. Edit required VARIABLES
# ------------------------------------------------------------------------------
# Usage:
# *.sh USERNAME TOKEN ROOT ORG WEEK DAY
# *.sh username 12345 ~/impactbyte/repo-class org-name week-0 day-0
# ------------------------------------------------------------------------------
# Example:
# ./bin/repo_generate.sh impactbyte-admin 12345 ~/all/org/impactbyte impactbyte-avalon week-1 day-1
# ------------------------------------------------------------------------------

# Required Variables
export USERNAME=${1}
export TOKEN=${2}
export ROOT=${3}
export ORG=${4}
export WEEK=${5}
export DAY=${6}

export SOURCE="${ROOT}/repo-course/web-full-stack/weeks/${WEEK}"
export REPOS=($(<${ROOT}/repo-course/web-full-stack/weeks/${WEEK}/${DAY}.sh))
export TARGET="${ROOT}/repo-batch/${ORG}"

# echo $USERNAME
# echo $TOKEN
# echo $ROOT
# echo $ORG
# echo $WEEK
# echo $DAY
# echo $SOURCE
# echo $REPOS
# echo $TARGET

# Generate single repo with master branch protection
generate() {
  echo ">>> GENERATE"
  echo "... create-github-repo"
  echo "username=${USERNAME} org=${ORG} ${1}"
  curl -u "${USERNAME}:${TOKEN}" \
    -X POST https://api.github.com/orgs/${ORG}/repos \
    --data '{
      "name":"'${1}'",
      "public":"true",
      "auto_init":"true"
    }'

  echo "... clone-repo"
  git clone git@github.com:${ORG}/${1}.git
  
  echo "... change-dir"
  cd $1

  echo "... copy-content"
  eval "cp -R ${SOURCE}/${1}/. ."
  ls

  echo "... add-commit-remote-push"
  git add -A
  git commit -m "Create initial repo"
  git push -u origin master
  cd ..

  echo "... protect-master-branch"
  curl -u "${USERNAME}:${TOKEN}" \
    -H "Accept: application/vnd.github.mercy-preview+json" \
    -X PUT https://api.github.com/repos/${ORG}/${1}/branches/master/protection \
    --data '{
      "required_status_checks": {
        "include_admins": true,
        "strict": false,
        "contexts": []
      },
      "required_pull_request_reviews": {
         "dismissal_restrictions": {},
         "dismiss_stale_reviews": true,
         "require_code_owner_reviews": false
       },
      "enforce_admins": true,
      "restrictions": {
        "users": [],
        "teams": [
          "mentors"
        ]
      }
    }'
}

clean() {
  echo ">>> CLEAN"
  echo "... delete-local-repo"
  rm -rf $1
  echo "... delete-github-repo"
  curl -u "${USERNAME}:${TOKEN}" \
    -X DELETE https://api.github.com/repos/${ORG}/${1}
}

check() {
  echo ">>> CHECK"
  cd ${1}
  pwd
  ls -la
  cd ..
}

test() {
  echo ">>> TEST"
  echo "... create-github-repo"
  echo "${USERNAME}@${ORG}/${1}"

  echo "... clone-repo"
  echo "https://github.com/${ORG}/${1}.git"

  echo "... copy-content"
  echo "cp -R ${SOURCE}/${1}/. ${1}/."

  echo "... add-commit-remote-push"
  echo "...committed..."
}

main() {
  echo ">>> GENERATING REPOS FOR : ${WEEK} : ${DAY}"
  echo

  for REPO in "${REPOS[@]}"
  do
    eval "cd ${TARGET}"
    echo "=== REPO : ${REPO} : START ==="
    echo
    # test $REPO
    clean $REPO
    generate $REPO
    # check $REPO
    echo
    echo "=== REPO : ${REPO} : FINISH ==="
    echo
    echo
  done
}

main
