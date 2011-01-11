class URI::YouTubeVideo < URI::YouTube

  attr_reader :video_id

  def initialize(*arg)
    super(*arg)
    @video_id = path
    @path = "/v/#{video_id}"
  end

  def check_path(path)
    true
  end

end
