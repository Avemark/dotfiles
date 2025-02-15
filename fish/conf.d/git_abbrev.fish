if status --is-interactive && ! abbr -l | grep gco > /dev/null
	# Branch (b)
	abbr gb 'git branch'
	abbr gbc 'git checkout -b'
	abbr gbl 'git branch -v'
	abbr gbL 'git branch -av'
	abbr gbx 'git branch -d'
	abbr gbX 'git branch -D'
	abbr gbm 'git branch -m'
	abbr gbM 'git branch -M'
	abbr gbs 'git show-branch'
	abbr gbS 'git show-branch -a'

	# Commit (c)
	abbr gc 'git commit --verbose'
	abbr gca 'git commit --verbose --all'
	abbr gcm 'git commit --message'
	abbr gco 'git checkout'
	abbr gcO 'git checkout --patch'
	abbr gcf 'git commit --amend --reuse-message HEAD'
	abbr gcF 'git commit --verbose --amend'
	abbr gcp 'git cherry-pick --ff'
	abbr gcP 'git cherry-pick --no-commit'
	abbr gcr 'git revert'
	abbr gcR 'git reset "HEAD^"'
	abbr gcs 'git show'
	abbr gcl 'git-commit-lost'

	# Conflict (C)
	abbr gCl 'git status | sed -n "s/^.*both [a-z]*ed: *//p"'
	abbr gCa 'git add (gCl)'
	abbr gCe 'git mergetool (gCl)'
	abbr gCo 'git checkout --ours --'
	abbr gCO 'gCo (gCl)'
	abbr gCt 'git checkout --theirs --'
	abbr gCT 'gCt (gCl)'

	# Data (d)
	abbr gd 'git ls-files'
	abbr gdc 'git ls-files --cached'
	abbr gdx 'git ls-files --deleted'
	abbr gdm 'git ls-files --modified'
	abbr gdu 'git ls-files --other --exclude-standard'
	abbr gdk 'git ls-files --killed'
	abbr gdi 'git status --porcelain --short --ignored | sed -n "s/^!! //p"'

	# Fetch (f)
	abbr gf 'git fetch'
	abbr gfc 'git clone'
	abbr gfm 'git pull'
	abbr gfr 'git pull --rebase'

	# Grep (g)
	abbr gg 'git grep'
	abbr ggi 'git grep --ignore-case'
	abbr ggl 'git grep --files-with-matches'
	abbr ggL 'git grep --files-without-matches'
	abbr ggv 'git grep --invert-match'
	abbr ggw 'git grep --word-regexp'

	# Index (i)
	abbr gia 'git add'
	abbr giA 'git add --patch'
	abbr giu 'git add --update'
	abbr gid 'git diff --no-ext-diff --cached'
	abbr giD 'git diff --no-ext-diff --cached --word-diff'
	abbr gir 'git reset'
	abbr giR 'git reset --patch'
	abbr gix 'git rm -r --cached'
	abbr giX 'git rm -rf --cached'

	# Log (l)
	abbr gl 'git log --topo-order'
	abbr gls 'git log --topo-order --stat --oneline'
	abbr gld 'git log --topo-order --stat --patch --full-diff --word-diff'
	abbr glo 'git log --topo-order'
	abbr glg 'git log --topo-order --graph --decorate --oneline master..'
	abbr glga 'git log --topo-order --all --graph --decorate --oneline'
	abbr glb 'git log --topo-order'
	abbr glc 'git shortlog --summary --numbered'

	# Merge (m)
	abbr gm 'git merge'
	abbr gmC 'git merge --no-commit'
	abbr gmF 'git merge --no-ff'
	abbr gma 'git merge --abort'
	abbr gmt 'git mergetool'

	# Push (p)
	abbr gp 'git push'
	abbr gpf 'git push --force'
	abbr gpa 'git push --all'
	abbr gpA 'git push --all ; git push --tags'
	abbr gpt 'git push --tags'
	abbr gpc 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD 2> /dev/null)'
	abbr gpp 'git pull origin (git rev-parse --abbrev-ref HEAD 2> /dev/null) ; git push origin (git rev-parse --abbrev-ref HEAD 2> /dev/null)'
	# Rebase (r)
	abbr gr 'git rebase'
	abbr gra 'git rebase --abort'
	abbr grc 'git rebase --continue'
	abbr gri 'git rebase --interactive'
	abbr grs 'git rebase --skip'

	# Remote (R)
	abbr gR 'git remote'
	abbr gRl 'git remote --verbose'
	abbr gRa 'git remote add'
	abbr gRx 'git remote rm'
	abbr gRm 'git remote rename'
	abbr gRu 'git remote update'
	abbr gRp 'git remote prune'
	abbr gRs 'git remote show'
	abbr gRb 'git-hub-browse'

	# Stash (s)
	abbr gs 'git stash'
	abbr gsa 'git stash apply'
	abbr gsx 'git stash drop'
	abbr gsX 'git-stash-clear-interactive'
	abbr gsl 'git stash list'
	abbr gsL 'git-stash-dropped'
	abbr gsd 'git stash show --patch --stat'
	abbr gsp 'git stash pop'
	abbr gsr 'git-stash-recover'
	abbr gss 'git stash save --include-untracked'
	abbr gsS 'git stash save --patch --no-keep-index'
	abbr gsw 'git stash save --include-untracked --keep-index'

	# Submodule (S)
	abbr gS 'git submodule'
	abbr gSa 'git submodule add'
	abbr gSf 'git submodule foreach'
	abbr gSi 'git submodule init'
	abbr gSI 'git submodule update --init --recursive'
	abbr gSl 'git submodule status'
	abbr gSm 'git-submodule-move'
	abbr gSs 'git submodule sync'
	abbr gSu 'git submodule foreach git pull origin master'
	abbr gSx 'git-submodule-remove'

	# Working Copy (w)
	abbr gws 'git status --short'
	abbr gwS 'git status'
	abbr gwd 'git diff --no-ext-diff'
	abbr gwD 'git diff --no-ext-diff --word-diff'
	abbr gwr 'git reset --soft'
	abbr gwR 'git reset --hard'
	abbr gwc 'git clean -n'
	abbr gwC 'git clean -f'
	abbr gwx 'git rm -r'
	abbr gwX 'git rm -rf'
end