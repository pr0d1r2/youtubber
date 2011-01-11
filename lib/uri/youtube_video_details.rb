class URI::YouTubeVideoDetails < URI::YouTubeVideo

  def initialize(*arg)
    super(*arg)
    @query = "video_id=#{video_id}&el=detailpage"
    @path = "/get_video_info"
  end

end
