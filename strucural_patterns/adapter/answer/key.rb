class AudioPlayerAdapter < VideoPlayer
  def initialize(audio_player)
    @audio_player = audio_player
  end

  def play_video(file)
    "Cannot play video, using AudioPlayer instead to play audio."
  end

  def play_audio(file)
    @audio_player.play_audio(file)
  end
end
