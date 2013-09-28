require 'spec_helper'

describe "sample-app::default" do

  context "on ubuntu systems" do
    subject { chef_run(platform: 'ubuntu', version: '12.04') }
    it { should install_package 'apache2' }
    it { should start_service 'apache2' }
  end

  context "on centos systems" do
    subject { chef_run(platform: 'centos', version: '6.3') }
    it { should install_package 'httpd' }
    it { should start_service 'httpd' }
  end

  context "default 'words_of_wisdom'" do
    subject { chef_run }
    it { should create_file_with_content '/var/www/sample.html', 'I can haz cats!' }
  end

  context "when 'words_of_wisdom' are set" do
    subject { chef_run { 
      node.set['sample_app']['words_of_wisdom'] = "no cats today :-("
    }}
    it { should create_file_with_content '/var/www/sample.html', 'no cats today :-(' }
  end
end
