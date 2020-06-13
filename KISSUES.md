# Known Issues

• Live videos won't show in the list when linking the /videos YouTube channel URL.

• If you're following a large number of channels, it can take a while for the script (using wget) to obtain each of the channels.

• HTML and XML character references might occasionally appear in video titles and descriptions. The most common offenders are wingding characters or alt-code symbols.

• Quotes are removed from titles in the list view to prevent issues when sorting.

• The shell window will need to be at least 860 pixels wide or else the shell will attempt to wrap text which can cause confusion in reading the list.

• To exit URL input options, just insert a `q` and press return. If a video tries to download or stream you can press `CTRL+C` and it will exit the download.