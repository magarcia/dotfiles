if contains (uname) "Linux"
    if test -d ~/.linuxbrew
        set PATH ~/.linuxbrew/bin ~/.linuxbrew/sbin /usr/local/cuda/bin $PATH
        set BREW_PREFIX $HOME/.linuxbrew
    end
else
    set PATH /usr/local/texlive/2018/bin/x86_64-darwin $PATH
    if test -d /usr/local/cuda/bin
        set PATH /usr/local/cuda/bin $PATH
    end
    set BREW_PREFIX /usr/local
    set -x DYLD_LIBRARY_PATH /usr/local/cuda/lib /usr/local/cuda /usr/local/cuda/extras/CUPTI/lib
    set -x LD_LIBRARY_PATH $DYLD_LIBRARY_PATH
end
