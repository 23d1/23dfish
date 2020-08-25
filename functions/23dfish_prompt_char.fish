function 23dfish_prompt_char -d "Set custom prompt char, or reset to \"▶︎\" without argument."
  switch (count $argv)
    case 0
      set -U theme_prompt_char "▶︎"; or echo -ne ''
    case 1
      set -U theme_prompt_char $argv[1]
  end
end
