require 'jekyll'
require 'fileutils'
require_relative '../lib/jekyll_basename_dirname'

RSpec.describe(JekyllBasenameDirnameName) do
  include described_class

  it 'verifies basename' do
    expect(basename('a/b/c/d/e.html')).to eq('e.html')
    expect(basename('blah.html')).to eq('blah.html')
  end

  it 'verifies dirname' do
    expect(dirname('a/b/c/d/e.html')).to eq('a/b/c/d')
    expect(dirname('blah.html')).to eq('.')
  end
end
