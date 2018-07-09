require 'octokit'

describe "Github" do
  it "user repo should contain web.rb with 'Hello, World' in it" do

    file_contents = Octokit.contents ENV['GITHUB_USERNAME']+'/ruby-sample', :path => 'web.rb',
                                     :accept => 'application/vnd.github.raw'
    expect(file_contents).to match /Hello, World/
  end
end
