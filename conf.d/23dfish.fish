# Fisher 4 install/update/uninstall hooks for 23dfish.
# Only defines event handlers; nothing runs at shell startup.

function __23dfish_fetch_motd
    set -l dir $__fish_config_dir/23dfish
    mkdir -p $dir
    curl -fsSL https://raw.githubusercontent.com/23d1/23dfish/master/motd.jpg -o $dir/motd.jpg
    or echo "23dfish: failed to download motd.jpg" >&2
end

# Install artem with Homebrew when available, otherwise download a
# prebuilt binary into $__fish_config_dir/23dfish/bin. Skipped if
# artem is already on PATH.
function __23dfish_fetch_artem
    type -q artem; and return

    if type -q brew
        brew install finefindus/tap/artem; and return
        echo "23dfish: brew install failed, downloading artem instead" >&2
    end

    set -l artem_version v3.0.0
    set -l arch
    switch (uname -m)
        case arm64 aarch64
            set arch aarch64
        case x86_64 amd64
            set arch x86_64
        case '*'
            echo "23dfish: no prebuilt artem for "(uname -m)", install it manually" >&2
            return 1
    end
    set -l os
    switch (uname -s)
        case Darwin
            set os apple-darwin
        case Linux
            set os unknown-linux-musl
        case '*'
            echo "23dfish: no prebuilt artem for "(uname -s)", install it manually" >&2
            return 1
    end

    set -l bin $__fish_config_dir/23dfish/bin
    mkdir -p $bin
    curl -fsSL https://github.com/FineFindus/artem/releases/download/$artem_version/artem-$artem_version-$arch-$os.tar.gz | tar -xzf - -C $bin artem
    or echo "23dfish: failed to download artem" >&2
end

function _23dfish_install --on-event 23dfish_install
    __23dfish_fetch_motd
    __23dfish_fetch_artem
end

function _23dfish_update --on-event 23dfish_update
    __23dfish_fetch_motd
    __23dfish_fetch_artem
end

function _23dfish_uninstall --on-event 23dfish_uninstall
    rm -rf $__fish_config_dir/23dfish
    functions --erase __23dfish_fetch_motd __23dfish_fetch_artem _23dfish_install _23dfish_update _23dfish_uninstall
end
