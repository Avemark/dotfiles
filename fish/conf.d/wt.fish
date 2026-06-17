function wt --description "Change to a git worktree directory"
    argparse b -- $argv
    or return 1

    set -l git_common_dir (git rev-parse --path-format=absolute --git-common-dir 2>/dev/null)
    if test $status -ne 0
        echo "wt: not in a git repository" >&2
        return 1
    end

    set -l main_worktree (dirname $git_common_dir)
    set -l project_name (basename $main_worktree)
    set -l parent_dir (dirname $main_worktree)
    set -l worktree_base "$parent_dir/worktrees/$project_name"

    if test (count $argv) -eq 0
        if set -q _flag_b
            echo "wt: -b requires a worktree name" >&2
            return 1
        end
        echo "Worktree base: $worktree_base"
        git worktree list
        return 0
    end

    set -l name $argv[1]
    set -l target "$worktree_base/$name"

    if set -q _flag_b
        mkdir -p $worktree_base
        if git show-ref --verify --quiet refs/heads/$name
            git worktree add $target $name
        else
            git worktree add -b $name $target
        end
        and cd $target
    else
        if test -d $target
            cd $target
        else
            echo "wt: worktree '$name' not found at $target" >&2
            echo "Use 'wt -b $name' to create it" >&2
            return 1
        end
    end
end

# --- Completions ---

complete -c wt -f
complete -c wt -s b -d 'Create new worktree and branch'
complete -c wt -n 'not __fish_contains_opt b' -a '(__wt_list_worktrees)'
complete -c wt -n '__fish_contains_opt b' -a '(__wt_list_branches)'

function __wt_list_worktrees --description "List existing worktree directories"
    set -l git_common_dir (git rev-parse --path-format=absolute --git-common-dir 2>/dev/null)
    or return

    set -l main_worktree (dirname $git_common_dir)
    set -l project_name (basename $main_worktree)
    set -l parent_dir (dirname $main_worktree)
    set -l worktree_base "$parent_dir/worktrees/$project_name"

    if test -d $worktree_base
        for dir in $worktree_base/*/
            if test -d $dir
                basename $dir
            end
        end
    end
end

function __wt_list_branches --description "List git branches for new worktree"
    begin
        git branch --format='%(refname:short)' 2>/dev/null
        git branch -r --format='%(refname:short)' 2>/dev/null | string replace -r '^[^/]+/' ''
    end | sort -u
end
