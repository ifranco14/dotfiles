function fish_prompt
    test $status -ne 0;
        and set -l colors 600 900 c00
        or set -l colors 333 666 aaa
    
    set -l pwd (prompt_pwd)
    set -l base (basename "$pwd")

    set -l expr "s|/|"(dim)"/"(dim)"|g; \
                 s|"$base"|"(dim)$base(dim)" |g"

    echo -n (echo "$pwd" | sed -e $expr)(dim)

    for color in $colors
        echo -n (set_color $color)">"
    end

    echo -n " "
end

function mkd
    mkdir -p $argv; and cd $argv
end

function w2m_env
    source ~/Documents/hAItta/w2m/project/w2m_env/bin/activate.fish;
    cd ~/Documents/hAItta/w2m/project/haitta_wind/;
end

function cl
    cd $argv; and ls;
end
