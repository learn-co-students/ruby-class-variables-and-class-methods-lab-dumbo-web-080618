class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << self.genre
      @@artists << self.artist
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
      n_hash = Hash.new(0)
      @@genres.each {|genre| n_hash[genre] += 1}
      n_hash
    end

    def self.artist_count
      n_hash = Hash.new(0)
      @@artists.each {|artist| n_hash[artist] += 1}
      n_hash
    end



end
