function 23dfish_toggle_host -d "Toggle [host & user] info."
  if test "$theme_display_hostname" = 'yes'
    set -e theme_display_hostname
    set -e theme_display_user
  else
    set -U theme_display_hostname yes
    set -U theme_display_user yes
  end
  return 0
end
