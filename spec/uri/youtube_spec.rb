require 'youtubber'

describe URI::YouTube do

  describe "new object" do
    subject { URI::YouTube.build({}) }

    its(:host) { should == "www.youtube.com" }

    its(:to_s) { should == "http://www.youtube.com" }
  end

end
