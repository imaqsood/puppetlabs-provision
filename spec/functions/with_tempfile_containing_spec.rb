# frozen_string_literal: true

require 'spec_helper'

describe 'provision::with_tempfile_containing' do
  let(:name) { 'my_temp_file' }
  let(:contents) { 'This is the file content.' }
  let(:extension) { 'txt' }
  let(:block) { Proc.new { |path| path } }
end
