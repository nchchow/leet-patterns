require 'rspec'
require_relative 'models/video_player'
require_relative 'models/audio_player'

class AudioPlayerAdapter < VideoPlayer
  # Your code here
end

# Don't modify the tests below this point. Your implementation should pass these tests
# You can run the tests by running the command `rspec structural_patterns/adapter/index.rb`

RSpec.describe AudioPlayerAdapter do
  let(:audio_player) { AudioPlayer.new }
  let(:adapter) { AudioPlayerAdapter.new(audio_player) }

  it 'plays audio using the adapter' do
    expect(adapter.play_audio('song.mp3')).to eq("Playing audio file: song.mp3")
  end

  it 'plays video using the adapter' do
    expect(adapter.play_video('video.mp4')).to eq("Playing video file: video.mp4")
  end
end
