# YTscrape Manual

[Launching YTscrape](#launch)

[Quick start to adding channels](#add_channels)

[Adjusting the list layout](#listlayout)

[Adjusting youtube-dl streaming options](#options)

[How to reset YTscrape to default settings](#reset)

[YTscrape controls](#ytscrape_controls)

---
<a name="launch"/>
#### Launching YTscrape
YTscrape is a terminal based script. There is no graphical interface, all interactions are handled by character references in a DOS like application.

To run YTscrape open a terminal emulator and insert `ytscrape` in lower-case characters followed by ENTER. Once the script launches you will be presented with a list of options. Each option is activated by inserting its character reference followed by ENTER.

![](images/manual_images/example.png "example")

---
<a name="add_channels"/>
#### Quick start to adding channels

Insert option "c" and press return. This will open a channels file in nano where ytscrape will read.

![](images/add_channels.png "channels")

![](images/add_channels_file.png "channels file")

To add YouTube channels, go to the channel in your web browser and copy the "videos" URL directory. Don't copy the `?disable_polymer=1` at the end of the URL. You can paste the URL into the channels file.

GOOD URL: https://www.youtube.com/user/BryanLunduke/videos

BAD URL: https://www.youtube.com/user/BryanLunduke/videos?disable_polymer=1

![](images/youtube_URL.png "youtube_URL")

Note: There are already two example channels included. You can clear these out when adding your own.

---
<a name="listlayout"/>
#### Adjusting the list layout
![](images/manual_images/nano.png "list layout")

You will see a list as seen above in the image. Adjusting list layouts will be done in the nano text editor. You can re-organize the list and comment out items that you don't want to see by inserting "#" in front of the desired line. Don't remove any of the lines and try not to edit them unless you know what you're doing.

If you wish to change the text editor used, you can modify the following files.

- ~/bin/ytscrape; replace all instances of "nano" with your preferred text editor.
- ~/bin/youtube/scripts/vidl; replace all instances of "nano" with your preferred text editor.

---
<a name="options"/>
#### Adjusting youtube-dl streaming options
![](images/manual_images/options.png "options")

You will see a list as seen above in the image when adjusting the streaming options. The location of the line numbers and colons are important, so don't remove them.

Directory location for video downloads.

- This section contains the directory path in which youtube-dl will save videos.

Directory location for MP3 downloads.

- This section contains the directory path in which youtube-dl will save MP3 audio files.

Video quality settings.

- This section contains the video streaming quality as seen from YouTube. The only options provided by YTscrape are 180p, 360p, 720p, and best. Best will always attempt to playback with the best quality possible. Note: If you use one of the other quality settings beside "best" some videos that may have not been uploaded in the selected quality can result in not loading. If you insert  a streaming quality option that isn't provided or is incorrect, YTscrape will display a warning that you have to fix the error.

MPV display options.

- This section contains the geometry settings for MPV. You can run "man mpv" from a terminal to get a list of different display options in which you can insert here.

---
<a name="reset"/>
#### How to reset YTscrape to default settings

Run ytscrape and insert option "R" and press return. You will be prompted YES/NO to reset. You can use the reset option if you accidentally made an error in the streaming options or list layout files.

---
<a name="ytscrape_controls"/>
#### YTscrape controls
Below is a layout of the control set for YTscrape for reference.

[1] Update list:

To view the list again, insert option 2 and press return. In the list view you will have the option to change the layout of the list and view video info.

[3] View list in spreadsheet:

To stream or download videos, insert option 4 and press return. This will bring you to a new view in which you will have the options to download, stream, adjust list layout, and adjust options. (This will require mpv player and youtube-dl!)

[c] Add / Remove channels:

To change the layout of the list, insert option l (as in lowercase "L.") It will open the list file in nano where you can comment with "#" pound to hide points of time. (Just don't edit the contents of the file.)

[q] Quit:

Insert q and press return to quit.

#### YouTube-dl

[1] Download video:

To stream the video, insert option 2 and press return. Next insert the number as seen beside the URL in the list. If you want to escape the URL number input without streaming the video, insert a "q" and press ENTER to abort.

![](images/ytdl_url_insert.png "ytdl_url_insert")

[3] Download as mp3:

To open the video from a browser, insert option 4 and press return. Next insert the number as seen beside the URL in the list. The selected video will open in the system defulat browser. If you want to escape the URL number input without opening the video in a browser, insert a "q" and press ENTER to abort.

[l] Change list layout:

To view the description of the video (known as the description field on YouTube which is typically located below the video player), insert option i (as in lowercase "I")  and press return. Next insert the number as seen beside the URL in the list and press return. To leave the video description view, press any key on the keyboard.

[o] Options:

To return back to the previous view, insert b.