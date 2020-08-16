function 23dfish_toggle_ssh_tag -d "Toggle -SSH- tag display."
  if test "$THEME_23DFISH_HIDE_SSH_TAG" = 'yes'
    set -e THEME_23DFISH_HIDE_SSH_TAG
  else
    set -g THEME_23DFISH_HIDE_SSH_TAG yes
  end
  return 0
end
