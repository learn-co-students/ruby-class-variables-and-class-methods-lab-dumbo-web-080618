class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

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

  def self.genre_count
    count=Hash.new(0)
    @@genres.each do |k, v|
      count[k] += 1
    end
    count
  end

  def self.artist_count
    count=Hash.new(0)
    @@artists.each do |k, v|
      count[k] += 1
    end
    count
  end


end
