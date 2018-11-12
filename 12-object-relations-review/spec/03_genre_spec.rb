require 'spec_helper'

describe 'Genre' do
  describe '#name' do
    it 'has a name' do
      rap = Genre.new('rap')
      expect(rap.name).to eq('rap')
    end
  end

  describe '#songs' do
    it 'has many songs' do
      jay_z = Artist.new('Jay-Z')
      rap = Genre.new('rap')
      Song.new('99 Problems', jay_z, rap)
      shrimp = Song.new('Big Shrimpin', jay_z, rap)

      expect(rap.songs).to include(shrimp)
    end
  end

  describe '.all' do
    it 'knows about all genre instances' do
      rap = Genre.new('rap')
      blues = Genre.new('blues')
      rock = Genre.new('rock')
      folk = Genre.new('folk')

      expect(Genre.all).to include(rock)
      expect(Genre.all).to include(folk)
      expect(Genre.all).to include(rap)
      expect(Genre.all).to include(blues)
    end
  end

  describe '#artists' do
    it 'has many artists, through songs' do
      jay_z = Artist.new('Jay-Z')
      kendrick = Artist.new('Kendrick Lamar')
      rap = Genre.new('rap')
      ninenty_nine_problems = Song.new('99 Problems', jay_z, rap)
      humble = Song.new('HUMBLE', kendrick, rap)

      expect(rap.artists).to include(jay_z)
      expect(rap.artists).to include(kendrick)
    end
  end
end
