#
# Functions
#

function git_current_branch
  git_branch_name
end

# The list of remotes
function current_repository
  if not git rev-parse --is-inside-work-tree >/dev/null ^1
    return
  end
  echo (git remote -v | cut -d':' -f 2)
end

# Pretty log messages
function _git_log_prettily
  if not [ -z $1 ]
    git log --pretty=$1
  end
end

# Warn if the current branch is a WIP
function work_in_progress
  if test (git log -n 1 ^/dev/null | grep -q -c "\-\-wip\-\-")
    echo "WIP!!"
  end
end

function gdv
    git diff -w "$argv" | view - 
end

function ggf 
  [ (count $argv) != 1 ]; and set -l b (git_current_branch)
  if [ -n $b ]
    git push origin --force "$b"
  else
    git push origin --force "$1"
  end
end

function ggl
  if [ (count $argv) != 0 ]; and [ (count $argv) != 1 ]
    git pull origin "$argv"
  else
    [ (count $argv) = 0 ]; and set -l b (git_current_branch)
    if [ -n $b ]
      git pull origin "$b"
    else
      git pull origin "$1"
    end
  end
end

function ggp
  if [ (count $argv) != 0 ]; and [ (count $argv) != 1 ]
    git push origin "$argv"
  else
    [ (count $argv) = 0 ]; and set -l b (git_current_branch)
    if [ -n $b ]
      git push origin "$b"
    else
      git push origin "$1"
    end
  end
end

function ggpnp
  if [ (count $argv) = 0 ]
    ggl; and ggp
  else
    ggl "$argv"; and ggp "$argv"
  end
end

function ggu
  [ (count $argv) != 1 ]; and set -l b (git_current_branch)
  if [ -n $b ]
      git pull --rebase origin "$b"
    else
      git pull --rebase origin "$1"
    end
end