function fish_right_prompt

  # Last command status
  set -l code $status
  if test $code != 0
    echo -s (set_color red) '-' $code '- '
  end

  # Timestamp
  set_color $fish_color_autosuggestion 2> /dev/null; or set_color 555
  if test "$THEME_23DFISH_HIDE_SSH_TAG" != 'yes'
    if [ -n "$SSH_CLIENT" ]
      if [ (id -u) = "0" ]
        _prompt_segment white (set_color yellow)"$USER"(set_color FFF)@(set_color purple)(hostname)(set_color white)(date "  +%H:%M:%S") ' '
      else
        _prompt_segment white " "(date "+%H:%M:%S") ' '
      end
    end
  end

end
