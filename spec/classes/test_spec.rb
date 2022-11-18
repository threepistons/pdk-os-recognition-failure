# frozen_string_literal: true

require 'spec_helper'

describe 'test' do
  on_supported_os.each do |os, os_facts|
    context "All tests so I don't have to repeat the 'let' line" do
      let(:facts) { os_facts }

      context "\"#{os}\" should match the failure message" do
        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_notify('osfam').with('message' => %r{deadbeef}) }
    end
  end
end
