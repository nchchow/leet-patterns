class VideoPlayer
  def play_video(file)
    "Playing video file: #{file}"
  end

  def play_audio(file)
    raise "Cannot play audio with VideoPlayer"
  end
end
