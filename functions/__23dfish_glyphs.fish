function __23dfish_glyphs -S -d 'Define glyphs used by 23dfish'
    # Powerline glyphs
    set -x branch_glyph            \uE0A0 # 
    set -x ruler_char              \u2500 # ─
    set -x right_black_arrow_glyph \uE0B0 # 
    set -x right_arrow_glyph       \uE0B1 # 
    set -x left_black_arrow_glyph  \uE0B2 # 
    set -x left_arrow_glyph        \uE0B3 # 
    set -x left_segment_end        ' ' # Whitespace

    # Additional glyphs
    set -x detached_glyph          \u27A6 # ➦
    set -x tag_glyph               \u2302 # ⌂
    set -x nonzero_exit_glyph      '! '
    set -x superuser_glyph         '$ '
    set -x bg_job_glyph            '% '
    set -x hg_glyph                \u263F # ☿

    # Python glyphs
    set -x superscript_glyph       \u00B9 \u00B2 \u00B3 # ¹ ² ³
    set -x virtualenv_glyph        \u25F0 # ◰
    set -x pypy_glyph              \u1D56 # ᵖ

    set -x ruby_glyph              ''
    set -x go_glyph                ''
    set -x nix_glyph               ''

    # Desk glyphs
    set -x desk_glyph              \u25F2 # ◲

    # Kubernetes glyphs
    set -x k8s_glyph               \u2388 # '⎈'

    # Vagrant glyphs
    set -x vagrant_running_glyph   \u2191 # ↑ 'running'
    set -x vagrant_poweroff_glyph  \u2193 # ↓ 'poweroff'
    set -x vagrant_aborted_glyph   \u2715 # ✕ 'aborted'
    set -x vagrant_saved_glyph     \u21E1 # ⇡ 'saved'
    set -x vagrant_stopping_glyph  \u21E3 # ⇣ 'stopping'
    set -x vagrant_unknown_glyph   '!'    # strange cases

    # Git glyphs
    set -x git_dirty_glyph      '*'
    set -x git_staged_glyph     '~'
    set -x git_stashed_glyph    '$'
    set -x git_untracked_glyph  '…'
    set -x git_ahead_glyph      \u2191 # '↑'
    set -x git_behind_glyph     \u2193 # '↓'
    set -x git_plus_glyph       '+'
    set -x git_minus_glyph      '-'
    set -x git_plus_minus_glyph '±'

    # Disable Powerline fonts (unless we're using nerd fonts instead)
    if [ "$theme_powerline_fonts" = "no" -a "$theme_nerd_fonts" != "yes" ]
        set branch_glyph            \u2387 # ⎇
        set right_black_arrow_glyph ''
        set right_arrow_glyph       ''
        set left_black_arrow_glyph  ''
        set left_arrow_glyph        ''
    end

    # Use prettier Nerd Fonts glyphs
    if [ "$theme_nerd_fonts" != "no" ]
        set branch_glyph     \uF418 # 
        set detached_glyph   \uF417 # 
        set tag_glyph        \uF412 # 

        set nix_glyph        \uF313 ' ' #  nf-linux-nixos
        set virtualenv_glyph \uE73C ' ' # 
        set ruby_glyph       \uE791 ' ' # 
        set go_glyph         \uE626 ' ' # 
        set node_glyph       \uE718 ' ' # 

        set vagrant_running_glyph  \uF431 # ↑ 'running'
        set vagrant_poweroff_glyph \uF433 # ↓ 'poweroff'
        set vagrant_aborted_glyph  \uF468 # ✕ 'aborted'
        set vagrant_unknown_glyph  \uF421 #  strange cases

        set git_dirty_glyph      \uF448 '' #  nf-oct-pencil
        set git_staged_glyph     \uF0C7 '' #  nf-fa-save
        set git_stashed_glyph    \uF0C6 '' #  nf-fa-paperclip
        # set git_untracked_glyph  \uF128 '' #  nf-fa-question
        set git_untracked_glyph  \uF141 '' #  nf-fa-ellipsis_h

        set git_ahead_glyph      \uF47B #  nf-oct-chevron_up
        set git_behind_glyph     \uF47C #  nf-oct-chevron_down

        set git_plus_glyph       \uF0DE #  fa-sort-asc
        set git_minus_glyph      \uF0DD #  fa-sort-desc
        set git_plus_minus_glyph \uF0DC #  fa-sort
    end

    # Avoid ambiguous glyphs
    if [ "$theme_avoid_ambiguous_glyphs" = "yes" ]
        set git_untracked_glyph '...'
    end

    # Extra and mostly unused at this moment
    set -x carriage_return_glyph           \u21B5 # ↵
    set -x root_glyph                      \uE614 # 
    set -x sudo_glyph                      \uF09C # 
    set -x aws_glyph                       \uF270 # 
    set -x aws_eb_glyph                    \uF1BD # 
    set -x background_jobs_glyph           \uF013 # 
    set -x test_glyph                      \uF188 # 
    set -x todo_glyph                      \u2611 # ☑
    set -x battery_glyph                   \uF240 # 
    set -x disk_glyph                      \uF0A0 # 
    set -x ok_glyph                        \uF00C # 
    set -x fail_glyph                      \uF00D # 
    set -x symfony_glyph                   \uE757 # 
    set -x apple_glyph                     \uF179 # 
    set -x windows_glyph                   \uF17A # 
    set -x freebsd_glyph                   \uF30C # 
    set -x android_glyph                   \uF17B # 
    set -x linux_arch_glyph                \uF303 # 
    set -x linux_centos_glyph              \uF304 # 
    set -x linux_coreos_glyph              \uF305 # 
    set -x linux_debian_glyph              \uF306 # 
    set -x linux_raspbian_glyph            \uF315 # 
    set -x linux_elementary_glyph          \uF309 # 
    set -x linux_fedora_glyph              \uF30a # 
    set -x linux_gentoo_glyph              \uF30d # 
    set -x linux_mageia_glyph              \uF310 # 
    set -x linux_mint_glyph                \uF30e # 
    set -x linux_nixos_glyph               \uF313 # 
    set -x linux_manjaro_glyph             \uF312 # 
    set -x linux_devuan_glyph              \uF307 # 
    set -x linux_alpine_glyph              \uF300 # 
    set -x linux_aosc_glyph                \uF301 # 
    set -x linux_opensuse_glyph            \uF314 # 
    set -x linux_sabayon_glyph             \uF317 # 
    set -x linux_slackware_glyph           \uF319 # 
    set -x linux_void_glyph                \uF17C # 
    set -x linux_artix_glyph               \uF17C # 
    set -x linux_ubuntu_glyph              \uF31b # 
    set -x linux_glyph                     \uF17C # 
    set -x sunos_glyph                     \uF185 # 
    set -x home_glyph                      \uF015 # 
    set -x home_sub_glyph                  \uF07C # 
    set -x folder_glyph                    \uF115 # 
    set -x etc_glyph                       \uF013 # 
    set -x network_glyph                   \uF50D # 
    set -x load_glyph                      \uF080 # 
    set -x swap_glyph                      \uF464 # 
    set -x ram_glyph                       \uF0E4 # 
    set -x server_glyph                    \uF0AE # 
    set -x vcs_untracked_glyph             \uF059 # 
    set -x vcs_unstaged_glyph              \uF06A # 
    set -x vcs_staged_glyph                \uF055 # 
    set -x vcs_stash_glyph                 \uF01C # 
    set -x vcs_incoming_changes_glyph      \uF01A # 
    set -x vcs_outgoing_changes_glyph      \uF01B # 
    set -x vcs_tag_glyph                   \uF02B # 
    set -x vcs_bookmark_glyph              \uF461 # 
    set -x vcs_commit_glyph                \uE729 # 
    set -x vcs_branch_glyph                \uF126 # 
    set -x vcs_remote_branch_glyph         \uE728 # 
    set -x vcs_loading_glyph               ''
    set -x vcs_git_glyph                   \uF1D3 # 
    set -x vcs_git_github_glyph            \uF113 # 
    set -x vcs_git_bitbucket_glyph         \uE703 # 
    set -x vcs_git_gitlab_glyph            \uF296 # 
    set -x vcs_hg_glyph                    \uF0C3 # 
    set -x vcs_svn_glyph                   \uE72D # 
    set -x rust_glyph                      \uE7A8 # 
    set -x python_glyph                    \uE73C # 
    set -x swift_glyph                     \uE755 # 
    set -x go_glyph                        \uE626 # 
    set -x golang_glyph                    \uE626 # 
    set -x public_ip_glyph                 \uF0AC # 
    set -x lock_glyph                      \uF023 # 
    set -x nordvpn_glyph                   \uF023 # 
    set -x execution_time_glyph            \uF252 # 
    set -x ssh_glyph                       \uF489 # 
    set -x vpn_glyph                       \uF023
    set -x kubernetes_glyph                \u2388 # ⎈
    set -x dropbox_glyph                   \uF16B # 
    set -x date_glyph                      \uF073 # 
    set -x time_glyph                      \uF017 # 
    set -x java_glyph                      \uE738 # 
    set -x laravel_glyph                   \ue73f # 
    set -x ranger_glyph                    \uF00b # 
    set -x midnight_commander_glyph        'mc'
    set -x vim_glyph                       \uE62B # 
    set -x terraform_glyph                 \uF1BB # 
    set -x proxy_glyph                     \u2194 # ↔
    set -x dotnet_glyph                    \uE77F # 
    set -x dotnet_core_glyph               \uE77F # 
    set -x azure_glyph                     \uFD03 # ﴃ
    set -x direnv_glyph                    \u25BC # ▼
    set -x flutter_glyph                   'F'
    set -x gcloud_glyph                    \uF7B7 # 
    set -x lua_glyph                       \uE620 # 
    set -x perl_glyph                      \uE769 # 
    set -x nnn_glyph                       'nnn'
    set -x timewarrior_glyph               \uF49B # 
    set -x taskwarrior_glyph               \uF4A0 # 
    set -x nix_shell_glyph                 \uF313 # 
    set -x wifi_glyph                      \uF1EB # 
    set -x erlang_glyph                    \uE7B1 # 
    set -x elixir_glyph                    \uE62D # 
    set -x postgres_glyph                  \uE76E # 
    set -x php_glyph                       \uE608 # 
    set -x haskell_glyph                   \uE61F # 
    set -x package_glyph                   \uF8D6 # 
    set -x julia_glyph                     \uE624 # 
end
