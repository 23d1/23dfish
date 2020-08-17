function show_os_type
    if test "$THEME_23DFISH_SHOW_OS" = 'yes'
        switch (uname)
            case Android
                printf " "
            case Darwin
                printf " "
            case FreeBSD
                printf " "
            case Linux
                switch (cat /proc/version)
                    case "*Arch*"
                        printf " "
                    case "*Centos*"
                        printf " "
                    case "*Debian*"
                        printf " "
                    case "*Raspbian*"
                        printf " "
                    case "*Elementary*"
                        printf " "
                    case "*Fedora*"
                        printf " "
                    case "*Gentoo*"
                        printf " "
                    case "*Mageia*"
                        printf " "
                    case "*Mint*"
                        printf " "
                    case "*Mixos*"
                        printf " "
                    case "*Manjaro*"
                        printf " "
                    case "*Devuan*"
                        printf " "
                    case "*Alpine*"
                        printf " "
                    case "*Aosc*"
                        printf " "
                    case "*OpenSUSE*"
                        printf " "
                    case "*Sabayon*"
                        printf " "
                    case "*Slackware*"
                        printf " "
                    case "*Ubuntu*"
                        printf " "
                    case "*"
                        printf " "
                end
            case SunOS
                printf " "
            case "*"
                printf "☢︎ "
        end
    end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

## Function to show a segment
function _prompt_segment -d "Function to show a segment"
  # Get colors
  set -l bg $argv[1]
  set -l fg $argv[2]

  # Set 'em
  set_color -b $bg
  set_color $fg

  # Print text
  if [ -n "$argv[3]" ]
    echo -n -s $argv[3]
  end

  # Reset
  set_color -b normal
  set_color normal

  # Print padding
  if [ (count $argv) = 4 ]
    echo -n -s $argv[4]
  end
end

function show_ssh_status -d "Function to show the ssh tag"
  if test "$THEME_23DFISH_HIDE_SSH_TAG" != 'yes'
    if [ -n "$SSH_CLIENT" ]
      if [ (id -u) = "0" ]
        _prompt_segment red white "  ssh" ' '
      else
        _prompt_segment blue white "  ssh" ' '
      end
    end
  end
end

# function show_host -d "Show host & user name"
#   # Display [user & host] info
#   if test "$THEME_23DFISH_SHOW_HOST" = 'yes'
#     if [ (id -u) = "0" ]
#       echo -n (set_color red)
#     else
#       echo -n (set_color blue)
#     end
#     echo -n ''(hostname|cut -d . -f 1)ˇ$USER' ' (set color normal)
#   end
# end

function show_cwd -d "Function to show the current working directory"
  if test "$theme_short_path" != 'yes' -a (prompt_pwd) != '~' -a (prompt_pwd) != '/'
    set -l cwd (dirname (prompt_pwd))
    test $cwd != '/'; and set cwd $cwd'/'
    _prompt_segment normal cyan $cwd
  end
  set_color -o cyan
  echo -n (basename (prompt_pwd))' '
  set_color normal
end

function show_git_info -d "Show git branch and dirty state"
  if [ (_git_branch_name) ]
    set -l git_branch '['(_git_branch_name)']'

    set_color -o
    if [ (_is_git_dirty) ]
      set_color -o red
      echo -ne "$git_branch× "
    else
      set_color -o green
      echo -ne "$git_branch "
    end
    set_color normal
  end
end

function show_prompt_char -d "Terminate with a nice prompt char"
  set -q THEME_23DFISH_PROMPT_CHAR
    or set -U THEME_23DFISH_PROMPT_CHAR '▶︎'
  echo -n -s $normal $THEME_23DFISH_PROMPT_CHAR ' '
end

function fish_prompt
  set fish_greeting

  # The newline before prompts
  # echo ''

  show_os_type
  show_ssh_status
  # show_host
  show_cwd
  show_git_info
  show_prompt_char
end
