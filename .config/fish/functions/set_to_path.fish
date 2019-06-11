function set_to_path
    contains $argv[1] $PATH
    or set PATH $argv[1] $PATH
end

