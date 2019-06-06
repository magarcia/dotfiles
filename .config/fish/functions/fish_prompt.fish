function _common_section
    printf $c1
    printf $argv[1]
    printf $c0
    printf ":"
    printf $c2
    printf $argv[2]
    printf $argv[3]
    printf $c0
    printf ", "
end

function section
    _common_section $argv[1] $c3 $argv[2] $ce
end

function error
    _common_section $argv[1] $ce $argv[2] $ce
end

function fish_prompt
    # $status gets nuked as soon as something else is run, e.g. set_color
    # so it has to be saved asap.
    set -l last_status $status

    # c0 to c4 progress from dark to bright
    # ce is the error colour
    set -g c0 (set_color 005284)
    set -g c1 (set_color 0075cd)
    set -g c2 (set_color 009eff)
    set -g c3 (set_color 6dc7ff)
    set -g c4 (set_color ffffff)
    set -g ce (set_color $fish_color_error)

    # Clear the line because fish seems to emit the prompt twice. The initial
    # display, then when you press enter.
    printf "\033[K"

    # Track the last non-empty command. It's a bit of a hack to make sure
    # execution time and last command is tracked correctly.
    set -l cmd_line (commandline)
    if test -n "$cmd_line"
        set -g last_cmd_line $cmd_line
        set -ge new_prompt
    else
        set -g new_prompt true
    end


    # Current Directory
    # printf $c1
    #printf (pwd | sed "s,/,$c0/$c1,g" | sed "s,\(.*\)/[^m]*m,\1/$c3,")
    set_color grey
    set -l current_dir (basename (dirs -c; dirs))
    echo -n $current_dir

    # Prompt on a new line
    set_color yellow
    echo -n " ❯ "
end
