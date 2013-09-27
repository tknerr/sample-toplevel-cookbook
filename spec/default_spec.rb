require 'spec_helper'

describe "sample-app::default" do

  context "by default" do
    subject { chef_run }
    it { should install_package 'apache2' }
    it { should start_service 'apache2' }
    it { should create_file_with_content '/var/www/sample.html', 'I can haz cats!' }
  end

  context "when words_of_wisdom are set" do
    subject { chef_run { 
      node.set['sample_app']['words_of_wisdom'] = "no cats today" 
    }}
    it { should create_file_with_content '/var/www/sample.html', 'no cats today' }
  end
end
