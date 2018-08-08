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
      @@artists.uniq
    end

    def self.genre_count
      hash = {}
      @@genres.each do |name|
        if hash.has_key?(name)
          hash[name] += 1
        else
          hash[name] = 1
        end
      end
      hash
    end

    def self.artist_count
      another_hash = {}
      @@artists.each do |name|
        if another_hash.has_key?(name)
          another_hash[name] += 1
        else
          another_hash[name] = 1
        end
      end
      another_hash
    end

end
