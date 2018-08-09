class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@all = []
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |x|
      if hash.key?(x)
        hash[x] += 1
      else
        hash[x] = 1
      end
    end
    return hash
  end

def self.artist_count
  hash = {}
  @@artists.each do |x|
    if hash.key?(x)
      hash[x] += 1
    else
      hash[x] = 1
    end
  end
  return hash
end
end
