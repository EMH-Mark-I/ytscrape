# ytscrape

This is a bash script html scraper that can be used as an alternative to having a Google account for subscribing to YouTube channels. You can view a list of the most recent uploads across multiple channels from a single list within the terminal or a spreadsheet. The attempt of the script is to emulate the "Subscriptions" page from YouTube which aggregates a listing of video uploads from channels you are subscribed to.  

![](images/screenshot.png "screenshot")

#### Requirements

youtube-dl

mpv player


#### Known Issues
Streaming videos with mpv might not always work due to youtube occasionally using different formats. Quality ranges for the script have been set for 180p, 360p, 720p, and best (which is mpv default.) I left out DASH options since those don't seem to always work, and due to audio being split from video. I'll might setup an easy way to just copy the whole URL.

If you're following a large number of channels, it can take a while for the script (using wget) to obtain each of the channels. I've tried using aria2c, but found that it appears to have tracking issues with handling the renaming of multiple files (as in hundreds) with the same name, and will create duplicates of the same pages which causes issues with building a list.

## Setup

Enable the execute permission bit for the "ytscrape" file.

chmod +x ytscrape

### Adding channels

• To add YouTube channels, go to the channel in your browser and copy the "videos" URL directory.

![](images/youtube_URL.png "youtube_URL")

• Paste it into the "channels" file located in the "youtube" directory.

![](images/channels.png "channels")
![](images/channels_file.png "channels_file")

### How to use script


Update list:

• To get a list of the latest videos from the provided channels, insert option 1 and press return. The script will fetch the web content of the channel URLs and paste it in a list when it completes.

View list:

• To view the list again, insert option 2 and press return. In the list view you will have the option to change the layout of the list.

View list in spreadsheet:

• This option will open the list in a spreadsheet via Libreoffice libcalc.

YouTube-dl:

• To stream or download videos, insert option 4 and press return. This will bring you to a new view in which you will have the options to download, stream, adjust list layout, and adjust options. (This will require mpv player and youtube-dl.)

Quit:

Insert q and press return to quit.

### YouTube-dl

Download video:

• To download a video, insert option 1 and press return. Insert the number as seen beside the URL in the list. (Note: The default download location will be /home/$USER/.)


![](images/ytdl_url.png "ytdl_url")
![](images/ytdl_url_insert.png "ytdl_url_insert")


Stream video:

• To stream the video, insert option 2 and press return. Insert the number as seen beside the URL in the list.

Download as mp3:

• To download a video as an mp3 file, insert option 3 and press return. Insert the number as seen beside the URL in the list. The default download location is /home/$USER/.

Change list layout:

• To change the layout of the list, insert option l (as in lowercase "L.") It will open the list file in nano where you can comment with "#" pound to hide points of time. (Just don't edit the contents of the file.)

Options:

• To adjust options for youtube-dl and mpv download quality settings or locations, insert option o (as in lowercase "o.") It will open the options file in nano where you can add a custom path for download locations with youtube-dl, video quality settings for both mpv and youtube-dl, and mpv window size. When you close the file, it will reload the script to account for any changes made.

back:

• To return back to the previous view, insert b.

#### Credits

EMH-Mark-I
