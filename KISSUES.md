# Known Issues

• Live videos won't show in the list when linking the /videos YouTube channel URL.

• Quality ranges for the script have been set for only 180p, 360p, 720p, and best (which is mpv default.) DASH quality options are not included since their files are split and not possible to stream.

• If you're following a large number of channels, it can take a while for the script (using wget) to obtain each of the channels.

• HTML and XML character references might occasionally appear in video titles and descriptions. The most common offenders are emoji characters or alt-code symbols. Report it as an issue along with a link to the YouTube video causing the issue.

• Quotes are removed from titles in the list view to prevent issues when sorting.

• The shell window will need to be atleast 860 pixels wide or else the shell will attempt to wrap text which can cause confusion in reading the list.

• To exit URL input options, just insert a q and press return. If a video tries to download or stream you can press `CTRL+C` and it will exit the download.