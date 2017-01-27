# git-aliases uninstall hook
#
# You can use this file to do custom cleanup when the package is uninstalled.
# You can use the variable $path to access the package path.
abbr -e g 'git'

abbr -e ga 'git add'
abbr -e gaa 'git add --all'
abbr -e gapa 'git add --patch'
abbr -e gau 'git add --update'

abbr -e gb 'git branch'
abbr -e gba 'git branch -a'
abbr -e gbd 'git branch -d'
abbr -e gbda 'git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*\$)" | command xargs -n 1 git branch -d'
abbr -e gbl 'git blame -b -w'
abbr -e gbnm 'git branch --no-merged'
abbr -e gbr 'git branch --remote'
abbr -e gbs 'git bisect'
abbr -e gbsb 'git bisect bad'
abbr -e gbsg 'git bisect good'
abbr -e gbsr 'git bisect reset'
abbr -e gbss 'git bisect start'

abbr -e gc 'git commit -v'
abbr -e gc! 'git commit -v --amend'
abbr -e gcn! 'git commit -v --no-edit --amend'
abbr -e gca 'git commit -v -a'
abbr -e gca! 'git commit -v -a --amend'
abbr -e gcan! 'git commit -v -a --no-edit --amend'
abbr -e gcans! 'git commit -v -a -s --no-edit --amend'
abbr -e gcam 'git commit -a -m'
abbr -e gcsm 'git commit -s -m'
abbr -e gcb 'git checkout -b'
abbr -e gcf 'git config --list'
abbr -e gcl 'git clone --recursive'
abbr -e gclean 'git clean -fd'
abbr -e gpristine 'git reset --hard; and git clean -dfx'
abbr -e gcm 'git checkout master'
abbr -e gcd 'git checkout develop'
abbr -e gcmsg 'git commit -m'
abbr -e gco 'git checkout'

abbr -e gcount 'git shortlog -sn'

abbr -e gcp 'git cherry-pick'
abbr -e gcpa 'git cherry-pick --abort'
abbr -e gcpc 'git cherry-pick --continue'
abbr -e gcs 'git commit -S'

abbr -e gd 'git diff'
abbr -e gdca 'git diff --cached'
abbr -e gdct 'git describe --tags `git rev-list --tags --max-count 1`'
abbr -e gdt 'git diff-tree --no-commit-id --name-only -r'
abbr -e gdw 'git diff --word-diff'

abbr -e gf 'git fetch'
abbr -e gfa 'git fetch --all --prune'
abbr -e gfo 'git fetch origin'

abbr -e gfg 'git ls-files | grep '

abbr -e gg 'git gui citool'
abbr -e gga 'git gui citool --amend'

abbr -e ggpur 'ggu'

abbr -e ggpull 'git pull origin (git_current_branch)'

abbr -e ggpush 'git push origin (git_current_branch)'

abbr -e ggsup 'git branch --set-upstream-to=origin/(git_current_branch)'
abbr -e gpsup 'git push --set-upstream origin (git_current_branch)'

abbr -e ghh 'git help'

abbr -e gignore 'git update-index --assume-unchanged'
abbr -e gignored 'git ls-files -v | grep "^[[:lower:]]"'
abbr -e git-svn-dcommit-push 'git svn dcommit; and git push github master:svntrunk'

abbr -e gk '\gitk --all --branches'
abbr -e gke '\gitk --all (git log -g --pretty=%h)'

abbr -e gl 'git pull'
abbr -e glg 'git log --stat'
abbr -e glgp 'git log --stat -p'
abbr -e glgg 'git log --graph'
abbr -e glgga 'git log --graph --decorate --all'
abbr -e glgm 'git log --graph --max-count=10'
abbr -e glo 'git log --oneline --decorate'
abbr -e glol "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbr -eev-commit"
abbr -e glola "git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbr -eev-commit --all"
abbr -e glog 'git log --oneline --decorate --graph'
abbr -e gloga 'git log --oneline --decorate --graph --all'
abbr -e glp "_git_log_prettily"

abbr -e gm 'git merge'
abbr -e gmom 'git merge origin/master'
abbr -e gmt 'git mergetool --no-prompt'
abbr -e gmtvim 'git mergetool --no-prompt --tool=vimdiff'
abbr -e gmum 'git merge upstream/master'

abbr -e gp 'git push'
abbr -e gpd 'git push --dry-run'
abbr -e gpoat 'git push origin --all; and git push origin --tags'
abbr -e gpu 'git push upstream'
abbr -e gpv 'git push -v'

abbr -e gr 'git remote'
abbr -e gra 'git remote add'
abbr -e grb 'git rebase'
abbr -e grba 'git rebase --abort'
abbr -e grbc 'git rebase --continue'
abbr -e grbi 'git rebase -i'
abbr -e grbm 'git rebase master'
abbr -e grbs 'git rebase --skip'
abbr -e grh 'git reset HEAD'
abbr -e grhh 'git reset HEAD --hard'
abbr -e grmv 'git remote rename'
abbr -e grrm 'git remote remove'
abbr -e grset 'git remote set-url'
abbr -e grt 'cd (git rev-parse --show-toplevel; or echo ".")'
abbr -e gru 'git reset --'
abbr -e grup 'git remote update'
abbr -e grv 'git remote -v'

abbr -e gsb 'git status -sb'
abbr -e gsd 'git svn dcommit'
abbr -e gsi 'git submodule init'
abbr -e gsps 'git show --pretty=short --show-signature'
abbr -e gsr 'git svn rebase'
abbr -e gss 'git status -s'
abbr -e gst 'git status'
abbr -e gsta 'git stash save'
abbr -e gstaa 'git stash apply'
abbr -e gstc 'git stash clear'
abbr -e gstd 'git stash drop'
abbr -e gstl 'git stash list'
abbr -e gstp 'git stash pop'
abbr -e gsts 'git stash show --text'
abbr -e gsu 'git submodule update'

abbr -e gts 'git tag -s'
abbr -e gtv 'git tag | sort -V'

abbr -e gunignore 'git update-index --no-assume-unchanged'
abbr -e gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-"; and git reset HEAD~1'
abbr -e gup 'git pull --rebase'
abbr -e gupv 'git pull --rebase -v'
abbr -e glum 'git pull upstream master'

abbr -e gwch 'git whatchanged -p --abbr -eev-commit --pretty=medium'
abbr -e gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'