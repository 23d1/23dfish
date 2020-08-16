function 23dfish_toggle_host -d "Toggle [host & user] info."
  if test "$THEME_23DFISH_SHOW_HOST" = 'yes'
    set -e THEME_23DFISH_SHOW_HOST
  else
    set -U THEME_23DFISH_SHOW_HOST yes
  end
  return 0
end
