if status is-interactive
    function fish_title
        if set -q argv[1]
            echo $argv
        else
            echo (basename (pwd))
        end
    end
    function get-theme -d "Get GTK theme"
        echo (eval echo (gsettings get org.gnome.desktop.interface gtk-theme))
    end
    function toggle-theme -a "light" "dark" -d "Toggle GTK theme between light and dark theme"
        if test -n $light
            set light Adwaita
        end
        if test -n $dark
            set dark Adwaita-dark
        end

        set theme (get-theme)
        echo "From: $theme"
        switch $theme
            case $light
                gsettings set org.gnome.desktop.interface gtk-theme $dark
            case $dark
                gsettings set org.gnome.desktop.interface gtk-theme $light
        end
        set theme (get-theme)
        echo "To: $theme"
    end
    function fuzzy-grep -a "initial_query" -d "Uses fzf as the selector interface for ripgrep"
        set rg_prefix "rg --column --line-number --no-heading --color=always --smart-case"
        set FZF_DEFAULT_COMMAND "$rg_prefix '$initial_query'"

        fzf --bind "change:reload:$rg_prefix {q} || true" \
            --ansi --disabled --query "$initial_query"    \
            --height=50% --layout=reverse
    end
    function update-aurs -d "Update aur packages from git"
        pushd .
        for aur in (find ~/Aurs -mindepth 1 -maxdepth 1 -type d -name "*-git")
            cd $aur
            makepkg -si && makepkg --printsrcinfo > .SRCINFO
            git add . && git commit -m "Update" && git push
        end
        popd
    end
    function check-video-integrity -a "video"
        ffmpeg -v error -i "$video" -f null - 2>check-video-integrity-error.log
    end
    function loopback-start -d "Start redirecting audio input to audio output"
        pacmd load-module module-loopback latency_msec=1
    end
    function loopback-stop -d "Stop redirecting audio input to audio output"
        pacmd unload-module module-loopback
    end
    function update-grub -d "Update grub with grub-mkconfig"
        sudo grub-mkconfig -o /boot/grub/grub.cfg
    end
    function count-characters -a "text"
        printf "$text" | wc --chars
    end
    function pacman-autoremove
        sudo pacman -Rs (pacman -Qdtq)
    end

    alias gth="get-theme"
    alias tth="toggle-theme"
    alias fzg="fuzzy-grep"
    alias uaurs="update-aurs"
    alias cch="count-characters"
    alias pcarm="pacman-autoremove"

    alias wip="git add -A && git commit -m wip"
    alias usysctl="systemctl --user"
    alias ujrnctl="journalctl --user"
    alias vim="nvim"
    alias cat="bat"
    alias ls="exa"
    alias cp="rsync -ah"
    alias rm="rm -i"

    set -U fish_greeting
    set VISUAL nvim
    set EDITOR nvim
    export BAT_THEME="gruvbox-dark"
    export GOPATH=$HOME/.go
    fish_add_path (go env GOPATH)/bin
    fish_add_path /usr/lib/ccache/bin
    fish_add_path /opt/clang-format-static
    fish_add_path ~/.local/bin
    fish_add_path ~/scripts

    # Start GNOME Keyring
    # if test -n "$DESKTOP_SESSION"
    #     set -x (gnome-keyring-daemon --start | string split "=")
    # end
end
