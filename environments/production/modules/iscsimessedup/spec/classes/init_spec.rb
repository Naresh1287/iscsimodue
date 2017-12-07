require 'spec_helper'
describe 'iscsi' do
  context 'with default values for all parameters' do
    it { should contain_class('iscsi') }
  end
end
