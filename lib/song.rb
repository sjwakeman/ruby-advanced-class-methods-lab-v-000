require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@songs = []          #Changed from @@all


  def self.all
    @@songs               #Changed from @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    @@songs << song       #Changed from @@all
    song
  end

  def self.new_by_name(song_name)
      song = Song.new         #creates the new song.
      song.name = song_name   #gives it a name
      song                    #instance of Song
  end

  def self.create_by_name(song_name)
      song = Song.new         #creates the new song.
      song.name = song_name   #gives it a name
      @@songs << song           #song being saved into the @@all class variable. Changed from @@all
      song                    #instance of Song
  end

  def self.find_by_name(song_name)
    self.all.detect{|song| song.name == song_name}
  end

  def self.find_or_create_by_name(song_name) #accept a string name for a song
    self.find_by_name(song_name)
    self.create_by_name(song_name)

  end
end
