function 23dfish_toggle_ssh_tag -d "Toggle SSH tag display."
  if test "$theme_hide_ssh_tag" = 'yes'
    set -e theme_hide_ssh_tag
  else
    set -g theme_hide_ssh_tag yes
  end
  return 0
end
