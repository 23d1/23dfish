# Display the current binding mode... if it's vi or vi-like.
#
# To always show the binding mode (regardless of current bindings):
#     set -g theme_display_vi yes
#
# To never show:
#     set -g theme_display_vi no
set -g theme_display_vi no

function fish_mode_prompt -d '23dfish-optimized fish mode indicator'
    [ "$theme_display_vi" != 'no' ]
    or return

    [ "$fish_key_bindings" = 'fish_vi_key_bindings' \
        -o "$fish_key_bindings" = 'hybrid_bindings' \
        -o "$fish_key_bindings" = 'fish_hybrid_key_bindings' \
        -o "$theme_display_vi" = 'yes' ]
    or return

    __23dfish_colors $theme_color_scheme

    type -q 23dfish_colors
    and 23dfish_colors

    set_color normal # clear out anything bold or underline...

    switch $fish_bind_mode
        case default
            set_color $color_vi_mode_default
            echo -n '🅽 '
        case insert
            set_color $color_vi_mode_insert
            echo -n '🅸 '
        case replace_one replace-one
            set_color $color_vi_mode_insert
            echo -n '🆁 '
        case visual
            set_color $color_vi_mode_visual
            echo -n '🆅 '
    end

    set_color normal
end
