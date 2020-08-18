function fish_title
    # Customize the title bar of the terminal window.
    echo "$USER@"
    hostname
    echo ' ' (status current-command) ' '
    pwd
    echo ' ' $argv[1]
end
