# Always provide completions for command line utilities.
#
# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# If your package doesn't provide any command line utility,
# feel free to remove completions directory from the project.

function __fish_git_branches
    # In some cases, git can end up on no branch - e.g. with a detached head
    # This will result in output like `* (no branch)` or a localized `* (HEAD detached at SHA)`
    # The first `string match -v` filters it out because it's not useful as a branch argument
    command git branch --no-color -a $argv ^/dev/null | string match -v '\* (*)' | string match -r -v ' -> ' | string trim -c "* " | string replace -r "^remotes/" ""
end

function __fish_git_tags
    command git tag ^/dev/null
end

function __fish_git_heads
    set -l gitdir (__fish_git_dir)
    for head in HEAD FETCH_HEAD ORIG_HEAD MERGE_HEAD
        if test -f $gitdir/$head
            echo $head
        end
    end
end

function __fish_git_refs
    __fish_git_branches
    __fish_git_tags
    __fish_git_heads
end

function __fish_git_ranges
    set -l both (commandline -ot | string split "..")
    set -l from $both[1]
    # If we didn't need to split (or there's nothing _to_ split), complete only the first part
    # Note that status here is from `string split` because `set` doesn't alter it
    if test -z "$from" -o $status -gt 0
        __fish_git_refs
        return 0
    end

    set -l to (set -q both[2]; and echo $both[2])
    for from_ref in (__fish_git_refs | string match "$from")
        for to_ref in (__fish_git_refs | string match "*$to*") # if $to is empty, this correctly matches everything
            printf "%s..%s\n" $from_ref $to_ref
        end
    end
end

# Start completion
complete -x -c gdv -a '(__fish_git_ranges)' -d 'Branch'
complete -x -c ggf -a '(__fish_git_branches)' -d 'Branch'
complete -x -c ggl -a '(__fish_git_branches)' -d 'Branch'
complete -x -c ggp -a '(__fish_git_branches)' -d 'Branch'
complete -x -c ggpnp -a '(__fish_git_branches)' -d 'Branch'
complete -x -c ggu -a '(__fish_git_branches)' -d 'Branch'