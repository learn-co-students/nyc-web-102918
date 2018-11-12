require "spec_helper"

describe "Song" do

  describe "#new" do
    it "initializes with a name, an artist, and a genre" do
      rap = Genre.new("rap")
      jay_z = Artist.new("Jay-Z")

      expect{Song.new("Lucifer", jay_z, rap)}.to_not raise_error
    end
  end

  describe ".all" do
    it "knows about all song instances" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      Song.new("99 Problems", jay_z, rap)
      shrimp = Song.new("Big Shrimpin", jay_z, rap)

      expect(Song.all).to include(shrimp)
    end
  end

  describe "#genre" do
    it "belongs to a genre" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = Song.new("99 Problems", jay_z, rap)

      expect(ninety_nine_problems.genre).to eq(rap)
    end
  end

  describe "#artist" do
    it "belongs to a artist" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = Song.new("99 Problems", jay_z, rap)

      ninety_nine_problems.artist = jay_z
      expect(ninety_nine_problems.artist).to eq(jay_z)
    end
  end
end
