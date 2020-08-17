function fish_right_prompt

  # Last command status
  set -l code $status
  if test $code != 0
    echo -s (set_color red) ' ' $code ' '
  end

  # Display [user & host] info
  if test "$THEME_23DFISH_SHOW_HOST" = 'yes'
    if [ (id -u) = "0" ]
      echo -n (set_color red)
    else
      echo -n (set_color 555)
    end
    echo -n ''$USER:(hostname|cut -d . -f 1)'' (set color normal)
  end

  # Timestamp
  set_color $fish_color_autosuggestion 2> /dev/null; or set_color 999
  echo '  '(date "+%H:%M:%S")

end
