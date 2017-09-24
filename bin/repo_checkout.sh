# ------------------------------------------------------------------------------
# Automate repo checkout for all branches
# ------------------------------------------------------------------------------
# Usage:
# *.sh USERNAME ROOT ORG WEEK DAY
# ------------------------------------------------------------------------------
# Example:
# ./bin/repo_checkout.sh impactbyte-admin ~/all/org/impactbyte/repo-class impactbyte-avalon week-1 day-1
# ------------------------------------------------------------------------------

# Required Variables
export USERNAME=${1}
export ROOT=${2}
export ORG=${3}
export WEEK=${4}
export DAY=${5}
export SOURCE="${ROOT}/education/projects/${WEEK}"
export TARGET="${ROOT}/${ORG}"
export REPOS=($(<${ROOT}/education/projects/${WEEK}/${DAY}.txt))

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
  echo "Checking out all repos for ${WEEK} ${DAY}"

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
