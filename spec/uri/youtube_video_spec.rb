require 'youtubber'

describe URI::YouTubeVideo do

  let(:video_id) { 'example' }

  describe "new object" do
    subject { URI::YouTubeVideo.build({:path => video_id}) }

    its(:host) { should == "www.youtube.com" }

    its(:to_s) { should == "http://www.youtube.com/v/#{video_id}" }

    its(:video_id) { should == video_id }

    it "#check_path should always be true" do
      subject.check_path('anything').should be_true
    end
  end

end
