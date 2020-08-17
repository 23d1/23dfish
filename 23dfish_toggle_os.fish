function 23dfish_toggle_os -d "Toggle OS icon."
  if test "$THEME_23DFISH_SHOW_OS" = 'yes'
    set -e THEME_23DFISH_SHOW_OS
  else
    set -g THEME_23DFISH_SHOW_OS yes
  end
  return 0
end
