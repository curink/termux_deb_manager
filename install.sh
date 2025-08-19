# download the appropriate binary
download_binary() {
    BASE_URL="https://raw.githubusercontent.com/curink/termux_deb_manager/refs/heads/main"
    FILE_NAME="debman"
    DOWNLOAD_URL="$BASE_URL/$FILE_NAME"

    # Download the binary
    echo "Downloading $FILE_NAME"
    if ! curl --progress-bar --fail -L "$DOWNLOAD_URL" -o "$FILE_NAME"; then
        echo "Failed to download the binary! Please check the URL and your connection: $DOWNLOAD_URL"
        exit 1
    fi

    chmod +x "$FILE_NAME"

    echo "Binary downloaded. You can now use the './debman -h' command! for help"
}

download_binary