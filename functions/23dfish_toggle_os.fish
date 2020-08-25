function 23dfish_toggle_os -d "Toggle OS icon."
  if test "$theme_show_os" = 'yes'
    set -e theme_show_os
  else
    set -U theme_show_os yes
  end
  return 0
end
