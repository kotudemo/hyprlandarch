function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here

    # No greeting
    set fish_greeting

    # Use starship
    starship init fish | source
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

     # Aliases
      alias cl  "printf '\033[2J\033[3J\033[1;1H'"
       alias please  "sudo" 
       alias jctl  "journalctl -p 3 -xb" 
       alias v  "nvim" 
       alias vi  "nvim" 
       alias vim  "nvim" 
       alias nv  "nvim" 
       alias nvim  "nvim" 
       alias gtu  "git add ./* && git commit -a --allow-empty-message -m '' && git push -u origin HEAD" 
       alias ff  "fastfetch" 
       alias yt  "yt-dlp" 
       alias pf  "pfetch"

     alias clear "printf '\033[2J\033[3J\033[1;1H'" # fix: kitty doesn't clear properly
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias ls 'eza --icons'
    alias q 'qs -c ii'

    
end

# uv
fish_add_path "/home/kd/.local/bin"

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/kd/.lmstudio/bin
# End of LM Studio CLI section

