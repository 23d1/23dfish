function 23dfish_prompt_char -d "Set custom prompt char, or reset to \"▶︎\" without argument."
  switch (count $argv)
    case 0
      set -U THEME_23DFISH_PROMPT_CHAR "▶︎"; or echo -ne ''
    case 1
      set -U THEME_23DFISH_PROMPT_CHAR $argv[1]
  end
end
