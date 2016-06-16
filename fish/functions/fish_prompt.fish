function fish_prompt
	set -l status_copy $status
    set -l cwd
    set -l root_color ffc magenta
    set -l root (set_color -o)"  ̸ "(set_color normal)

    switch "$PWD"
        case "$HOME"\*
            set root_color ffc green
            set root (set_color -o)" ~ "(set_color normal)
    end

    set cwd (echo "$PWD" | sed -E "s|$HOME/?||")

    set -l base (basename $cwd)

    switch "$cwd"
        case "" /
        case \*
            segment " $base " black fc0
    end

    set branch_name

    if set branch_name (git_branch_name)
        set -l color black ffc
        set -l repo_status
        set -l padding
        set -l branch_ref ➦

        if git symbolic-ref HEAD ^ /dev/null > /dev/null
            set padding " "
            set color ffc magenta
            set branch_ref 
        end

        if git_is_touched
            set color black ffc
            set padding

            if git_is_staged
                set repo_status "✚ "
            end

            if git_is_dirty
                set repo_status "✦ "
            end

        else if git_is_empty
            set repo_status "● "

        else if git_is_stashed
            set repo_status "•• "
        end

        segment "$padding$branch_ref $branch_name $repo_status" $color
    end

    set -l dir (dirname $cwd | sed -E 's|(^/)?([^/.])[^/]*|\2|g')

    switch "$dir"
        case "" / .
        case \*
            segment " $dir " black ffc
    end

    segment "$root" $root_color

    segment_close
end
