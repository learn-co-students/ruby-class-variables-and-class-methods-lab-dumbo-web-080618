class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
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

  def self.hash_sling (collection)
    hash = {}
    collection.each{|uniq_item|
      if hash[uniq_item]
        hash[uniq_item] += 1
      else
        hash[uniq_item] = 1
      end
    }
    hash
  end

  def self.genre_count
    self.hash_sling(@@genres)
  end

  def self.artist_count
    self.hash_sling(@@artists)
  end
end
#end of class