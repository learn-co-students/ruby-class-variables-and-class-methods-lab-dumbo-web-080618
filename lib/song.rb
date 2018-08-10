

class Song
  @@count = 0
  @@artists = []
  @@genres = []
# attr_accessor :name, :artist, :genre # allows us to change the attributes also this reads and writes
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def name
  @name
end
def artist
  @artist
end
def genre
  @genre
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
def self.genre_count  #@@genres is an array and therefore cannot be a key
  new_hash = {}
  @@genres.each do |song_genre|  # .each separates the array and loops through each array value
    new_hash[song_genre] = @@genres.count(song_genre)
  end
  new_hash
end
def self.artist_count
  hash_new = {}
  @@artists.each do |song_artist|
    hash_new[song_artist] = @@artists.count(song_artist)
  end
  hash_new
end
# def Song.new(name, artist, genre)
#
# end
# def self.count
#   @@count
# end

# end





end
