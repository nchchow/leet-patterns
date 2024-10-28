class AudioPlayer
  def play_audio(file)
    "Playing audio file: #{file}"
  end

  def play_video(file)
    raise "Cannot play video with AudioPlayer"
  end
end
