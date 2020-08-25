function 23dfish_toggle_host -d "Toggle [host & user] info."
  if test "$theme_23dfish_show_host" = 'yes'
    set -e theme_show_host
  else
    set -U theme_show_host yes
  end
  return 0
end
