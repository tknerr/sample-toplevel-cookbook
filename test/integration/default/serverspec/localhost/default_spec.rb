require 'spec_helper'

describe "sample-app::default" do

  it "installs apache2" do
    expect(package('apache2')).to be_installed
  end

  it "runs starts the apache2 service" do
    expect(service('apache2')).to be_enabled
    expect(service('apache2')).to be_running
  end

  it "listens on port 80" do
    expect(port(80)).to be_listening
  end

  it "renders the sample.html file" do
    expect(file('/var/www/sample.html')).to be_file
    expect(file('/var/www/sample.html')).to contain('test all the things!')
  end
end
