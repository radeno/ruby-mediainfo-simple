require 'test_helper'

describe MediaInfo do
  it 'parse file' do
    info_file = MediaInfo.parse('test/fixtures/image.jpg')

    assert(info_file.image?)
  end
end
