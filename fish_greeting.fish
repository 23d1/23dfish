# Set global color styles, for example:
#
# function edin_error
#   set_color -o red
# end
#
# function edin_normal
#   set_color normal
# end

function fish_greeting
printf "

"
# artem $OMF_PATH/themes/23dfish/motd.jpg -s 76 --centerX -c "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789<>|,.-#+!\$%&/()=?*'_:; "
artem $OMF_PATH/themes/23dfish/motd.jpg -s 76 --centerX -c 0
printf "

"
printf "    → Proceed? ————————————  "(set_color yellow)"23d.1"(set_color normal)" / exec ↓ "(set_color cyan)"$USER"(set_color normal)":"(set_color 99F)(prompt_hostname)(set_color normal)(set_color 0F0)" "
switch (uname)
    case Android
        echo ""
    case Darwin
        echo ""
    case FreeBSD
        echo ""
    case Linux
        switch (cat /etc/os-release | grep "^ID=")
            case "*arch*|*arco*"
                echo ""
            case "*centos*"
                echo ""
            case "*debian*"
                echo ""
            case "*raspbian*"
                echo ""
            case "*elementary*"
                echo ""
            case "*fedora*"
                echo ""
            case "*gentoo*"
                echo ""
            case "*mageia*"
                echo ""
            case "*mint*"
                echo ""
            case "*mixos*"
                echo ""
            case "*manjaro*"
                echo ""
            case "*devuan*"
                echo ""
            case "*alpine*"
                echo ""
            case "*aosc*"
                echo ""
            case "*opensuse*|*tumbleweed*"
                echo ""
            case "*sabayon*"
                echo ""
            case "*slackware*"
                echo ""
            case "*ubuntu*"
                echo ""
            case "*"
                echo ""
        end
    case SunOS
        echo ""
    case "CYGWIN_NT-*|MSYS_NT-*"
        echo ""
    case "*"
        echo "☢︎"
end
printf "
"(set_color normal)
end
