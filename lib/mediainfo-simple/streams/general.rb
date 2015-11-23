class GeneralStream < Stream
  attr_accessor :general_count
  attr_accessor :video_count
  attr_accessor :audio_count
  attr_accessor :text_count
  attr_accessor :other_count
  attr_accessor :image_count
  attr_accessor :menu_count

  attr_accessor :header_size
  attr_accessor :data_size
  attr_accessor :footer_size
  attr_accessor :is_streamable
end
