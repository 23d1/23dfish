# Set global color styles, for example:
#
# function edin_error
#   set_color -o red
# end
#
# function edin_normal
#   set_color normal
#

# ——————————————————————————————————————————————————————————————————————————————
#
# Ascii
#
# ——————————————————————————————————————————————————————————————————————————————
function fish_greeting
    $OMF_PATH/themes/23dfish/image2ascii -w 122 -g 44 -f $OMF_PATH/themes/23dfish/motd.jpg
    printf "    → Proceed? ————————————  "(set_color yellow)"23d.1"(set_color normal)" / exec ↓ "(set_color cyan)"$USER"(set_color normal)":"(set_color 99F)(prompt_hostname)(set_color normal)(set_color 0F0)" ☢︎

"
end
