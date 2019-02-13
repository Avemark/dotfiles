# aliases!

if status --is-interactive && abbr -l | grep gco > /dev/null
	# Branch (b)
	abbr --add --universal gb 'git branch'
	abbr --add --universal gbc 'git checkout -b'
	abbr --add --universal gbl 'git branch -v'
	abbr --add --universal gbL 'git branch -av'
	abbr --add --universal gbx 'git branch -d'
	abbr --add --universal gbX 'git branch -D'
	abbr --add --universal gbm 'git branch -m'
	abbr --add --universal gbM 'git branch -M'
	abbr --add --universal gbs 'git show-branch'
	abbr --add --universal gbS 'git show-branch -a'

	# Commit (c)
	abbr --add --universal gc 'git commit --verbose'
	abbr --add --universal gca 'git commit --verbose --all'
	abbr --add --universal gcm 'git commit --message'
	abbr --add --universal gco 'git checkout'
	abbr --add --universal gcO 'git checkout --patch'
	abbr --add --universal gcf 'git commit --amend --reuse-message HEAD'
	abbr --add --universal gcF 'git commit --verbose --amend'
	abbr --add --universal gcp 'git cherry-pick --ff'
	abbr --add --universal gcP 'git cherry-pick --no-commit'
	abbr --add --universal gcr 'git revert'
	abbr --add --universal gcR 'git reset "HEAD^"'
	abbr --add --universal gcs 'git show'
	abbr --add --universal gcl 'git-commit-lost'

	# Conflict (C)
	abbr --add --universal gCl 'git status | sed -n "s/^.*both [a-z]*ed: *//p"'
	abbr --add --universal gCa 'git add (gCl)'
	abbr --add --universal gCe 'git mergetool (gCl)'
	abbr --add --universal gCo 'git checkout --ours --'
	abbr --add --universal gCO 'gCo (gCl)'
	abbr --add --universal gCt 'git checkout --theirs --'
	abbr --add --universal gCT 'gCt (gCl)'

	# Data (d)
	abbr --add --universal gd 'git ls-files'
	abbr --add --universal gdc 'git ls-files --cached'
	abbr --add --universal gdx 'git ls-files --deleted'
	abbr --add --universal gdm 'git ls-files --modified'
	abbr --add --universal gdu 'git ls-files --other --exclude-standard'
	abbr --add --universal gdk 'git ls-files --killed'
	abbr --add --universal gdi 'git status --porcelain --short --ignored | sed -n "s/^!! //p"'

	# Fetch (f)
	abbr --add --universal gf 'git fetch'
	abbr --add --universal gfc 'git clone'
	abbr --add --universal gfm 'git pull'
	abbr --add --universal gfr 'git pull --rebase'

	# Grep (g)
	abbr --add --universal gg 'git grep'
	abbr --add --universal ggi 'git grep --ignore-case'
	abbr --add --universal ggl 'git grep --files-with-matches'
	abbr --add --universal ggL 'git grep --files-without-matches'
	abbr --add --universal ggv 'git grep --invert-match'
	abbr --add --universal ggw 'git grep --word-regexp'

	# Index (i)
	abbr --add --universal gia 'git add'
	abbr --add --universal giA 'git add --patch'
	abbr --add --universal giu 'git add --update'
	abbr --add --universal gid 'git diff --no-ext-diff --cached'
	abbr --add --universal giD 'git diff --no-ext-diff --cached --word-diff'
	abbr --add --universal gir 'git reset'
	abbr --add --universal giR 'git reset --patch'
	abbr --add --universal gix 'git rm -r --cached'
	abbr --add --universal giX 'git rm -rf --cached'

	# Log (l)
	abbr --add --universal gl 'git log --topo-order'
	abbr --add --universal gls 'git log --topo-order --stat --oneline'
	abbr --add --universal gld 'git log --topo-order --stat --patch --full-diff --word-diff'
	abbr --add --universal glo 'git log --topo-order'
	abbr --add --universal glg 'git log --topo-order --graph --decorate --oneline master..'
	abbr --add --universal glga 'git log --topo-order --all --graph --decorate --oneline'
	abbr --add --universal glb 'git log --topo-order'
	abbr --add --universal glc 'git shortlog --summary --numbered'

	# Merge (m)
	abbr --add --universal gm 'git merge'
	abbr --add --universal gmC 'git merge --no-commit'
	abbr --add --universal gmF 'git merge --no-ff'
	abbr --add --universal gma 'git merge --abort'
	abbr --add --universal gmt 'git mergetool'

	# Push (p)
	abbr --add --universal gp 'git push'
	abbr --add --universal gpf 'git push --force'
	abbr --add --universal gpa 'git push --all'
	abbr --add --universal gpA 'git push --all ; git push --tags'
	abbr --add --universal gpt 'git push --tags'
	abbr --add --universal gpc 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD 2> /dev/null)'
	abbr --add --universal gpp 'git pull origin (git rev-parse --abbrev-ref HEAD 2> /dev/null) ; git push origin (git rev-parse --abbrev-ref HEAD 2> /dev/null)'
	# Rebase (r)
	abbr --add --universal gr 'git rebase'
	abbr --add --universal gra 'git rebase --abort'
	abbr --add --universal grc 'git rebase --continue'
	abbr --add --universal gri 'git rebase --interactive'
	abbr --add --universal grs 'git rebase --skip'

	# Remote (R)
	abbr --add --universal gR 'git remote'
	abbr --add --universal gRl 'git remote --verbose'
	abbr --add --universal gRa 'git remote add'
	abbr --add --universal gRx 'git remote rm'
	abbr --add --universal gRm 'git remote rename'
	abbr --add --universal gRu 'git remote update'
	abbr --add --universal gRp 'git remote prune'
	abbr --add --universal gRs 'git remote show'
	abbr --add --universal gRb 'git-hub-browse'

	# Stash (s)
	abbr --add --universal gs 'git stash'
	abbr --add --universal gsa 'git stash apply'
	abbr --add --universal gsx 'git stash drop'
	abbr --add --universal gsX 'git-stash-clear-interactive'
	abbr --add --universal gsl 'git stash list'
	abbr --add --universal gsL 'git-stash-dropped'
	abbr --add --universal gsd 'git stash show --patch --stat'
	abbr --add --universal gsp 'git stash pop'
	abbr --add --universal gsr 'git-stash-recover'
	abbr --add --universal gss 'git stash save --include-untracked'
	abbr --add --universal gsS 'git stash save --patch --no-keep-index'
	abbr --add --universal gsw 'git stash save --include-untracked --keep-index'

	# Submodule (S)
	abbr --add --universal gS 'git submodule'
	abbr --add --universal gSa 'git submodule add'
	abbr --add --universal gSf 'git submodule foreach'
	abbr --add --universal gSi 'git submodule init'
	abbr --add --universal gSI 'git submodule update --init --recursive'
	abbr --add --universal gSl 'git submodule status'
	abbr --add --universal gSm 'git-submodule-move'
	abbr --add --universal gSs 'git submodule sync'
	abbr --add --universal gSu 'git submodule foreach git pull origin master'
	abbr --add --universal gSx 'git-submodule-remove'

	# Working Copy (w)
	abbr --add --universal gws 'git status --short'
	abbr --add --universal gwS 'git status'
	abbr --add --universal gwd 'git diff --no-ext-diff'
	abbr --add --universal gwD 'git diff --no-ext-diff --word-diff'
	abbr --add --universal gwr 'git reset --soft'
	abbr --add --universal gwR 'git reset --hard'
	abbr --add --universal gwc 'git clean -n'
	abbr --add --universal gwC 'git clean -f'
	abbr --add --universal gwx 'git rm -r'
	abbr --add --universal gwX 'git rm -rf'
end
