require 'uri'

class URI::YouTube < URI::HTTP

  HOST = "www.youtube.com"

  def initialize(*arg)
    super(*arg)
    @host = HOST
    @scheme = 'http'
  end

end
