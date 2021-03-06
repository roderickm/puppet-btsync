require 'spec_helper'

describe 'btsync', :type => :class do
  context "On Debian OSes" do
    let :facts do
      {
        :osfamily               => 'Debian',
        :concat_basedir         => '/dne',
      }
    end
    it { should contain_class("btsync::install") }
    it { should contain_class("btsync::config") }
    it { should contain_class("btsync::service") }
  end
end
