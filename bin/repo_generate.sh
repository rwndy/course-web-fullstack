# Automate repo template generation
#
# 1. Create GitHub API token
# 2. Edit required VARIABLES
#
# Usage:
# *.sh USERNAME TOKEN ROOT ORG WEEK DAY
# *.sh username 12345 ~/All/repo/hacktiv8 name-fox-2000 phase-0 week-0 day-0
#
# Example:
# ./bin/repo_generate.sh mhaidarh 12345 ~/All/repo/hacktiv8 arctic-fox-2016 phase-1 week-1 day-1

# Required Variables
export USERNAME=${1}
export TOKEN=${2}
export ROOT=${3}
export ORG=${4}
export PHASE=${5}
export WEEK=${6}
export DAY=${7}
export SOURCE="${ROOT}/hacktiv8-phases/${WEEK}/challenge"
export TARGET="${ROOT}/${ORG}/${PHASE}"
export REPOS=($(<${ROOT}/hacktiv8-phases/${WEEK}/challenge/${DAY}.txt))

# Logging
echo ${REPOS}

# Generate single repo with master branch protection
function generate() {
  echo ">>> GENERATE"
  echo "--- create-github-repo"
  echo "${USERNAME} ${ORG} ${1}"
  curl -u "${USERNAME}:${TOKEN}" \
    -X POST https://api.github.com/orgs/${ORG}/repos \
    --data '{
      "name":"'${1}'",
      "public":"true",
      "auto_init":"true"
    }'

  echo "--- protect-master-branch"
  curl -u "${USERNAME}:${TOKEN}" \
    -H "Accept: application/vnd.github.loki-preview+json" \
    -X PUT https://api.github.com/repos/${ORG}/${1}/branches/master/protection \
    --data '{
      "required_status_checks": {
        "include_admins": true,
        "strict": true,
        "contexts": []
      },
      "restrictions": {
        "users": [],
        "teams": [
          "instructors"
        ]
      }
    }'

  echo "--- clone-repo"
  git clone git@github.com:${ORG}/${1}.git

  echo "--- copy-content"
  cd $1
  eval "cp -R ${SOURCE}/${1}/source/. ."
  ls

  echo "--- add-commit-remote-push"
  git add -A
  git commit -m "Template"
  git push -u origin master
  cd ..
}

function clean() {
  echo ">>> CLEAN"
  echo "--- delete-local-repo"
  rm -rf $1
  echo "--- delete-github-repo"
  echo "${USERNAME} ${ORG} ${1}"
  curl -u "${USERNAME}:${TOKEN}" \
    -X DELETE https://api.github.com/repos/${ORG}/${1}
}

function check() {
  echo ">>> CHECK"
  cd ${1}
  pwd
  ls -la
  cd ..
}

function test() {
  echo ">>> TEST"
  echo "--- create-github-repo"
  echo "${USERNAME} ${ORG} ${1}"

  echo "--- clone-repo"
  echo "https://github.com/${ORG}/${1}.git"

  echo "--- copy-content"
  echo "cp -R ${SOURCE}/${1}/source/. ${1}/."

  echo "--- add-commit-remote-push"
}

function main() {
  echo "Generating challenge repos for ${PHASE} ${WEEK} ${DAY}"

  for REPO in "${REPOS[@]}"
  do
    eval "cd ${TARGET}"
    echo
    echo "=== ${REPO} ==="
    echo
    # clean $REPO
    generate $REPO
    check $REPO
    echo
    echo "=== ${REPO} ==="
    echo
  done
}

main
