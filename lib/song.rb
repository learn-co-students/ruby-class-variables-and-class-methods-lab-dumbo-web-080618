require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist =artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    #binding.pry
    @@artists.uniq
  end

def self.genre_count
    #binding.pry
    typeof = {}
    @@genres.each do |jeanra|
      #binding.pry
      if typeof.key?(jeanra)
        typeof[jeanra] += 1
      else
        typeof[jeanra] = 1
      end
    end
    typeof
  end

  def self.artist_count
    typeof = {}
    @@artists.each do |jeanra|
      if typeof.key?(jeanra)
        typeof[jeanra] += 1
      else
        typeof[jeanra] = 1
      end
    end
  typeof
  end

end
