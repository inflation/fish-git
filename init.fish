# git initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

. $path/functions/git-aliases.fish
. $path/completions/git-aliases.fish

if not set -q __fish_git_aliases_initialized

set -U __fish_git_aliases_initialized
#
# Aliases
# (sorted alphabetically)
#

abbr g 'git'

abbr ga 'git add'
abbr gaa 'git add --all'
abbr gapa 'git add --patch'
abbr gau 'git add --update'

abbr gb 'git branch'
abbr gba 'git branch -a'
abbr gbd 'git branch -d'
abbr gbda 'git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*\$)" | command xargs -n 1 git branch -d'
abbr gbl 'git blame -b -w'
abbr gbnm 'git branch --no-merged'
abbr gbr 'git branch --remote'
abbr gbs 'git bisect'
abbr gbsb 'git bisect bad'
abbr gbsg 'git bisect good'
abbr gbsr 'git bisect reset'
abbr gbss 'git bisect start'

abbr gc 'git commit -v'
abbr gc! 'git commit -v --amend'
abbr gcn! 'git commit -v --no-edit --amend'
abbr gca 'git commit -v -a'
abbr gca! 'git commit -v -a --amend'
abbr gcan! 'git commit -v -a --no-edit --amend'
abbr gcans! 'git commit -v -a -s --no-edit --amend'
abbr gcam 'git commit -a -m'
abbr gcsm 'git commit -s -m'
abbr gcb 'git checkout -b'
abbr gcf 'git config --list'
abbr gcl 'git clone --recursive'
abbr gclean 'git clean -fd'
abbr gpristine 'git reset --hard; and git clean -dfx'
abbr gcm 'git checkout master'
abbr gcd 'git checkout develop'
abbr gcmsg 'git commit -m'
abbr gco 'git checkout'

abbr gcount 'git shortlog -sn'

abbr gcp 'git cherry-pick'
abbr gcpa 'git cherry-pick --abort'
abbr gcpc 'git cherry-pick --continue'
abbr gcs 'git commit -S'

abbr gd 'git diff'
abbr gdca 'git diff --cached'
abbr gdct 'git describe --tags `git rev-list --tags --max-count 1`'
abbr gdt 'git diff-tree --no-commit-id --name-only -r'
abbr gdw 'git diff --word-diff'

abbr gf 'git fetch'
abbr gfa 'git fetch --all --prune'
abbr gfo 'git fetch origin'

abbr gfg 'git ls-files | grep '

abbr gg 'git gui citool'
abbr gga 'git gui citool --amend'

abbr ggpur 'ggu'

abbr ggpull 'git pull origin (git_current_branch)'

abbr ggpush 'git push origin (git_current_branch)'

abbr ggsup 'git branch --set-upstream-to=origin/(git_current_branch)'
abbr gpsup 'git push --set-upstream origin (git_current_branch)'

abbr ghh 'git help'

abbr gignore 'git update-index --assume-unchanged'
abbr gignored 'git ls-files -v | grep "^[[:lower:]]"'
abbr git-svn-dcommit-push 'git svn dcommit; and git push github master:svntrunk'

abbr gk '\gitk --all --branches'
abbr gke '\gitk --all (git log -g --pretty=%h)'

abbr gl 'git pull'
abbr glg 'git log --stat'
abbr glgp 'git log --stat -p'
abbr glgg 'git log --graph'
abbr glgga 'git log --graph --decorate --all'
abbr glgm 'git log --graph --max-count=10'
abbr glo 'git log --oneline --decorate'
abbr glol "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr glola "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
abbr glog 'git log --oneline --decorate --graph'
abbr gloga 'git log --oneline --decorate --graph --all'
abbr glp "_git_log_prettily"

abbr gm 'git merge'
abbr gmom 'git merge origin/master'
abbr gmt 'git mergetool --no-prompt'
abbr gmtvim 'git mergetool --no-prompt --tool=vimdiff'
abbr gmum 'git merge upstream/master'

abbr gp 'git push'
abbr gpd 'git push --dry-run'
abbr gpoat 'git push origin --all; and git push origin --tags'
abbr gpu 'git push upstream'
abbr gpv 'git push -v'

abbr gr 'git remote'
abbr gra 'git remote add'
abbr grb 'git rebase'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbi 'git rebase -i'
abbr grbm 'git rebase master'
abbr grbs 'git rebase --skip'
abbr grh 'git reset HEAD'
abbr grhh 'git reset HEAD --hard'
abbr grmv 'git remote rename'
abbr grrm 'git remote remove'
abbr grset 'git remote set-url'
abbr grt 'cd (git rev-parse --show-toplevel; or echo ".")'
abbr gru 'git reset --'
abbr grup 'git remote update'
abbr grv 'git remote -v'

abbr gsb 'git status -sb'
abbr gsd 'git svn dcommit'
abbr gsi 'git submodule init'
abbr gsps 'git show --pretty=short --show-signature'
abbr gsr 'git svn rebase'
abbr gss 'git status -s'
abbr gst 'git status'
abbr gsta 'git stash save'
abbr gstaa 'git stash apply'
abbr gstc 'git stash clear'
abbr gstd 'git stash drop'
abbr gstl 'git stash list'
abbr gstp 'git stash pop'
abbr gsts 'git stash show --text'
abbr gsu 'git submodule update'

abbr gts 'git tag -s'
abbr gtv 'git tag | sort -V'

abbr gunignore 'git update-index --no-assume-unchanged'
abbr gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-"; and git reset HEAD~1'
abbr gup 'git pull --rebase'
abbr gupv 'git pull --rebase -v'
abbr glum 'git pull upstream master'

abbr gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
abbr gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'

end