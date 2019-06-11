function load_fish_file
    if test -e $argv[1]
        source $argv[1]
    end
end
