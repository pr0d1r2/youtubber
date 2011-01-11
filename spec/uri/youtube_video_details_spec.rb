require 'youtubber'

describe URI::YouTubeVideoDetails do

  let(:video_id) { "example" }

  describe "new object" do
    subject { URI::YouTubeVideoDetails.build({:path => video_id}) }

    its(:host) { should == "www.youtube.com" }

    its(:to_s) { should == "http://www.youtube.com/get_video_info?video_id=#{video_id}&el=detailpage" }
  end

end
