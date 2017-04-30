media_info
================

Description
-----------
Wrapper for MediaInfo library.
MediaInfo is format and attribute-rich tool. More info at [https://mediaarea.net/en/MediaInfo](https://mediaarea.net/en/MediaInfo)


How it works
------------
It calls the MediaInfo command-line interface, and parses the XML output (obtained with `mediainfo file.mp4 --Full --Language=raw --BOM --Output=XML`).
Almost every MediaInfo raw attribute is associated and converted to appropriate Ruby naming style and data format.

See all the metadata attributes supported for each stream type in the corresponding classes in [lib/media_info/streams](lib/media_info/streams).

Undefined attributes returned by MediaInfo are accessable by method ".others"


Installation
------------

### Dependencies

MediaInfo CLI. Installation:

*Mac OS X: `brew install mediainfo`
*Debian / Ubuntu: `sudo apt-get install mediainfo`

### The gem

Use `git@github.com:radeno/media_info.git`


Usage
-----
```ruby
require 'media_info'

info = MediaInfo::Base.new("/path/to/file")
```

This downloaded file https://upload.wikimedia.org/wikipedia/commons/3/36/Hopetoun_falls.jpg example:
```ruby
=> #<MediaInfo::Base:0x007fb1e4946c20
 @streams=
  [#<MediaInfo::GeneralStream:0x007fb1e5bdbe08
    @codec="JPEG",
    @codec_extensions=["jpeg", "jpg", "jpe"],
    @codec_string="JPEG",
    @complete_name="/Users/Rado/Downloads/Hopetoun_falls.jpg",
    @count=322,
    @file_extension="jpg",
    @file_modified=2017-01-07 15:53:37 +0100,
    @file_modified_date_local="2017-01-07 16:53:37",
    @file_name="Hopetoun_falls",
    @file_size=2954043,
    @file_size_string="2.82 MiB",
    @file_size_string1="3 MiB",
    @file_size_string2="2.8 MiB",
    @file_size_string3="2.82 MiB",
    @file_size_string4="2.817 MiB",
    @folder_name="/Users/Rado/Downloads",
    @format="JPEG",
    @format_commercial="JPEG",
    @format_extensions=["jpeg", "jpg", "jpe"],
    @internet_media_type="image/jpeg",
    @stream_count=1,
    @stream_kind="General",
    @stream_kind_id=0,
    @stream_kind_string="General",
    @stream_size=0,
    @stream_size_proportion=0.0,
    @stream_size_string="0.00 Byte1 (0%)",
    @stream_size_string1="Byte0",
    @stream_size_string2="0.0 Byte1",
    @stream_size_string3="0.00 Byte1",
    @stream_size_string4="0.000 Byte1",
    @stream_size_string5="0.00 Byte1 (0%)",
    @_others={:image_count=>"1", :image_format_list=>"JPEG", :image_format_with_hint_list=>"JPEG", :image_codec_list=>"JPEG", :format_string=>"JPEG"}>,
   #<MediaInfo::ImageStream:0x007fb1e5b498c8
    @bit_depth=8,
    @bit_depth_string="8 bit3",
    @chroma_subsampling="4:4:4",
    @codec="JPEG",
    @codec_string="JPEG",
    @color_space="YUV",
    @compression_mode="Lossy",
    @compression_mode_string="Lossy",
    @count=118,
    @format="JPEG",
    @format_commercial="JPEG",
    @height=2048,
    @height_string="2048 pixel3",
    @internet_media_type="image/jpeg",
    @resolution=8,
    @resolution_string="8 bit3",
    @stream_count=1,
    @stream_kind="Image",
    @stream_kind_id=0,
    @stream_kind_string="Image",
    @stream_size=2954043,
    @stream_size_proportion=1.0,
    @stream_size_string="2.82 MiB (100%)",
    @stream_size_string1="3 MiB",
    @stream_size_string2="2.8 MiB",
    @stream_size_string3="2.82 MiB",
    @stream_size_string4="2.817 MiB",
    @stream_size_string5="2.82 MiB (100%)",
    @width=3072,
    @width_string="3072 pixel2",
    @_others={}>]>
```

New or unmapped Mediainfo attributes are available by "_others".

```ruby
# check if there is a stream of some type
info.video?        # false
info.audio?        # false
info.image?        # true
info.text?         # false

# get streams by type
info.{general|image|audio|video|text|menu|other}

# check the number of streams of some type
info.audio.size   # 2

# get metadata about a stream
info.audio[0].language  # "English"
info.audio[1].language  # "French"
```

# for all streams
`info.streams`

TODO
----
*add tests


License
-------
[MIT](https://opensource.org/licenses/MIT)
