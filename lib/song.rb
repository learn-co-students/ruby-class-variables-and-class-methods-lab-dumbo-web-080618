require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.genre_count
    result = {}
    self.genres.each do |genre|
      result[genre] = @@genres.count(genre)
    end
    result
  end

  def self.artist_count
    result = {}
    self.artists.each do |artist|
      result[artist] = @@artists.count(artist)
    end
    result
  end
end
