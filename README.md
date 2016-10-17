mediainfo-simple
================

Description
-----------
Rich meta informations from file. Wide formats support.
It is just wrapper of great library MediaInfo.


How it works
------------
It calls the MediaInfo command-line interface, and parses the XML output (obtained with `mediainfo file.mp4 --Full --Language=raw --BOM --Output=XML`).


Installation
------------

### Dependencies

MediaInfo CLI. Installation:

*Mac OS X: `brew install mediainfo`
*Debian / Ubuntu: `sudo apt-get install mediainfo`

### The gem

Use `git@github.com:radeno/ruby-mediainfo-simple.git`


Usage
-----
```
require 'mediainfo-simple'

info = MediaInfo.new("/path/to/file").call
```

That will issue the system call to `mediainfo` and parse the output.

```
# check if there is a stream of some type
info.video?        # true
info.audio?        # true
info.image?        # false

# check the number of streams of some type
info.audio.count   # 2

# get metadata about a stream
info.audio[0].language  # "English"
info.audio[1].language  # "French"
```

# for all streams
`info.streams`

See all the metadata attributes supported for each stream type in the corresponding classes in [lib/mediainfo-simple/streams](lib/mediainfo-simple/streams).


TODO
----
*add tests


License
-------
[WTFPL](http://www.wtfpl.net/txt/copying/)
