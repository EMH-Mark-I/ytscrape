# ytscrape

This is a bash script html scraper that can be used as an alternative to having a Google account for subscribing to YouTube channels. You can view a list of the most recent uploads across multiple channels from a single list within the terminal or a spreadsheet. The attempt of the script is to emulate the "Subscriptions" page from YouTube which aggregates a listing of video uploads from channels you are subscribed to.

A much better alternative than this script for channel updates would be to utilize an RSS reader with subscriptions to your preferred channels. A nice function of the ytscrape script however is its features:

- User defined video and audio quality settings from a config file.
- Video and audio quality auto-fallback functionality in the event a video is only available in a lower quality than defined in the config file.
- Download videos for offline viewing
- Download mp3 of a video for offline listening
- Open video from a web-browser.
- List channel video uploads from the terminal

Note: This is NOT a channel browser.

![](images/screenshot.png "screenshot")

#### Requirements

[youtube-dl](https://rg3.github.io/youtube-dl/)

[pup HTML parser](https://github.com/EricChiang/pup)

[mpv player](https://github.com/mpv-player/mpv/)

nano text editor

BASH

Linux

## Selections
[Known Issues.](KISSUES.md)

[Install Steps.](INSTALL.md)

[YTscrape Manual](MANUAL.md)

#### Credits

EMH-Mark-I
