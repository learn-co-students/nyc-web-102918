require "spec_helper"


describe "Artist" do

  describe "#name" do
    it "has a name" do
      jay_z = Artist.new("Jay-Z")

      expect(jay_z.name).to eq("Jay-Z")
    end
  end

  describe ".all" do
    it "knows about all artist instances" do
      jay_z = Artist.new("Jay-Z")
      kendrick = Artist.new("Kendrick Lamar")

      expect(Artist.all).to include(jay_z)
      expect(Artist.all).to include(kendrick)
    end
  end

  describe "#new_song" do
    it "given a name and genre, creates a new song associated with that artist" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.songs).to include(ninety_nine_problems)
      expect(ninety_nine_problems.artist).to eq(jay_z)
    end
  end

  describe "#songs" do
    it "has many songs" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.songs).to include(ninety_nine_problems)
    end
  end

  describe "#genres" do
    it "has many genres, through songs" do
      jay_z = Artist.new("Jay-Z")
      rap = Genre.new("rap")
      ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

      expect(jay_z.genres).to include(rap)
      expect(jay_z.songs.first.genre).to eq(rap)
    end
  end

end
