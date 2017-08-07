# Automate repo checkout for all branches
#
# Usage:
# *.sh USERNAME ORG_PATH ORG PHASE WEEK DAY
#
# Example:
# ./repo_checkout.sh mhaidarh ~/All/repo/hacktiv8 arctic-fox-2016 phase-1 week-1 day-1

# Required Variables
export USERNAME=${1}
export ORG_PATH=${2}
export ORG=${3}
export PHASE=${4}
export WEEK=${5}
export DAY=${6}

export TARGET="${ORG_PATH}/${ORG}/${PHASE}"
export REPOS=($(<${ORG_PATH}/hacktiv8-phases/${WEEK}/challenge/${DAY}.txt))

function checkout() {
  echo ">>> CHECKOUT"
  cd ${1}

  echo "--- get-all-branches"
  git checkout master
  git fetch --all

  echo "--- pull-all-branches"
  for branch in `git branch -r | cut -d '/' -f2`; do git checkout $branch && git pull origin $branch; done && git checkout master
}

function main() {
  echo "Checking out all repos for ${PHASE} ${WEEK} ${DAY}"

  for REPO in "${REPOS[@]}"
  do
    eval "cd ${TARGET}"
    echo
    echo "=== ${REPO} ==="
    echo
    checkout $REPO
    echo
    echo "=== ${REPO} ==="
    echo
  done
}

main
