require 'spec_helper_acceptance'

describe 'openondemand class:' do
  context 'default parameters' do
    it 'should run successfully' do
      pp =<<-EOS
      package { 'centos-release-scl': }->
      class { 'openondemand': }
      EOS

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
end
