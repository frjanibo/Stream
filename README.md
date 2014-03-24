Stream
===========
A fork of 'XBMCtorrent' by steeve

What it is
----------
Stream allows you to stream magnet links from within XBMC, without having to wait for the whole file to download, thanks to sequential downloading (see FAQ).



Download
--------
Check out the [Releases](https://github.com/brysonreece/stream/releases) tab to download the ZIP file.



Supported Platforms
-------------------
* Windows x32 x64
* OS X x32 and x64
* Linux x32 and x64
* Raspberry Pi
* Android 4.0+

How it works
------------
Stream is actually two parts:
* _Stream_: the modified XBMCtorrent addon written in Python.
* `torrent2http`: a custom bittorrent client written in Go and leveraging libtorrent-rasterbar, that turns magnet links into HTTP endpoints, using sequential downloading.

If you feel adventurous, you can find the `torrent2http` and `libtorrent-go` sources at:
* https://github.com/steeve/libtorrent-go
* https://github.com/steeve/torrent2http



FAQ
---
#### I can't code. How can I help?
Spread the word. Talk about it with your friends, show them, make videos, tutorials. Talk about it on social networks, blogs etc...

#### Does it work with all torrents?
It works with most. Some torrents are known not to work. However, x264 and Xvid ones generally work pretty well, although some won't work yet. Some AVI files don't like to be streamed over HTTP, so YMMV. Of course, the goal is to shrink the number of torrents that don't work.

#### The plugin doesn't work at all, what can I do?
First of all, we need to make sure it's not the torrent fault. I usually test this by searching for small serie episodes on Piratebay. Try that, if it does't work, send me your xbmc.log.

#### Can I seek in a video?
Yes, although now if you try to seek to a part you haven't downloaded yet, XBMC will wait for that part to be available. This will be fixed in a future release.

#### Can it stream HD?
Of course! 720p and 1080p work fine, provided you have enough bandwidth, and there are enough people on the torrent (see video).

#### Doesn't sequential download on bittorrent is bad?
Generally, yes. However, Stream respects the same [requirements "defined" by uTorrent 3](http://www.utorrent.com/help/faq/ut3#faq2[/url]). Also, Stream tries to make it up to the swarm by seeding while you watch the movie.

#### What about seeding?
Stream will seed the file you're watching until it's finished playing. For instance, if the download of a 2 hours long movie is finished in 10 minutes, you'll continue seeding it until you finish watching the movie. This is by design, to make up for the fact that we are using sequential download.

#### Does it downloads the whole file? Do I need the space? Is it ever deleted?
Yes and yes. Stream will pre-allocate the whole file before download. So if you want to watch a 4GB video, you'll need the 4GB. The file is deleted once you stop watching it, unless you choose to keep files from within the addon settings.

#### Where is the file located? Can I change it?
Currently the file is downloaded in the same directory as the torrent2http executable by default (in resources/bin/<OS>/ in the addon directory). You can change this location from within Stream's settings.

#### Can I keep the file after playback?
Yes, just enable this option in the addon settings.

#### Can I set it to download directly to my NAS and keep it after playback?
Yes of course. Just set the download directly to your NAS location, and make sure you have enabled "Keep files after playback" option.

#### Why are you using Google Analytics? Can I disable it?
Short answer: In order to benefit the original XBMCtorrent developer, steeve. For disabling, see long answer.

Long answer: First of all, your whole IP isn't tracked. Only the first 3 parts of it, thanks to Analytics [Anonymous Mode](https://developers.google.com/analytics/devguides/collection/gajs/methods/gaJSApi_gat?csw=1#_gat._anonymizeIp). So for instance, if your IP is A.B.C.D, only A.B.C.0 will be logged.
Second, this is my only tool to track audience interest, this is great information, and it really helps.
Finally if you really want to, you can disable it in the addon settings (except for 1 GA event when you go in the addon).
If you are blocking GA on your computer altogether, you'll still be able to use the addon.

#### How can I report a bug?
Please, file an issue :)

#### How can I use the Play-to-XBMC feature?
First of all, install [Play-to-XBMC](https://chrome.google.com/webstore/detail/play-to-xbmc/fncjhcjfnnooidlkijollckpakkebden) from khloke.
Then, follow the Play-to-XBMC install instructions:

> Setup:
>
> * On XBMC, go under System > Settings > Services > Webserver
> * Enable "Allow control of XBMC via HTTP, leave the port as default or set it to something else (if you know what you're doing). Write down the port number.
> * Username and password are optional
> * Right click on the 'Play to XBMC' icon and select 'Options'
> * Put in the IP address or hostname of your XBMC box and fill in the port number with the port number you wrote down earlier. Fill in the username and password if you entered one into XBMC.

Once you've done all that, simply right click on any magnet link, and select Play-to-XBMC > Play. Boom.

#### Provider X is blocked in my country/ISP, how can I set another domain?
Enable Auto-Unblock in the settings.
If it still doesn't work, you can go in Advanced > Custom Domains. Here to you can set each provider with whatever proxy you choose.

Changelog
---------
Check out the [Releases](https://github.com/brysonreece/stream/releases) tab.
