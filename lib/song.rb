require 'pry'

class Song
  attr_reader :name, :artist, :genre
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre
    @@count += 1
    @@all << self
  end

  #class method because it's the classes job
  #to keep the record of how many songs it creates
  def self.count
    @@count
  end

  # #want the class to show us all the artist of the exitisting SONGS
  def self.artists
    artist_names_only_once = []

    @@artists.select do |artist|
      if !(artist_names_only_once.include?(artist))
        artist_names_only_once << artist
      end
      artist_names_only_once
    end

    artist_names_only_once
  end

  def self.genres
    genres_names_only_once = []

    @@genres.select do |genre|
      if !(genres_names_only_once.include?(genre))
        genres_names_only_once << genre
      end
    end

    genres_names_only_once
  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |genre|
      if genre_hash.has_key?(genre) == false
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end

    genre_hash
  end

  def self.artist_count
    artist_hash = {}

    @@artists.each do |artist|
      if artist_hash.has_key?(artist) == false
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end

    artist_hash
  end

end
