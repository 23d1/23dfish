# Fisher 4 install/update/uninstall hooks for 23dfish.
# Only defines event handlers; nothing runs at shell startup.

function __23dfish_fetch_motd
    set -l dir $__fish_config_dir/23dfish
    mkdir -p $dir
    curl -fsSL https://raw.githubusercontent.com/23d1/23dfish/master/motd.jpg -o $dir/motd.jpg
    or echo "23dfish: failed to download motd.jpg" >&2
end

function _23dfish_install --on-event 23dfish_install
    __23dfish_fetch_motd
end

function _23dfish_update --on-event 23dfish_update
    __23dfish_fetch_motd
end

function _23dfish_uninstall --on-event 23dfish_uninstall
    rm -rf $__fish_config_dir/23dfish
    functions --erase __23dfish_fetch_motd _23dfish_install _23dfish_update _23dfish_uninstall
end
