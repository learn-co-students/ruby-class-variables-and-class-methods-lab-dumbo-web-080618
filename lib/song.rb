# class Song
# 	#attr_accessor :name, :artists, :genre
# 	@@count = 0
#   @@all = []
#
#
# 	def initialize(name, artist, genre)
# 		@name = name
# 		@artists = artists
# 		@genre = genre
# 		@@count += 1
#
# 	end
#   #
# 	# def self.count
# 	# 	@@count
# 	# end
#   #
#   # 	def self.all
#   #   	@@all
#   # 	end
#   #
#   # def name
#   #   @name
#   # end
#   #
#   # def name=(new_name)
#   #   @name = new_name
#   # end
#
#   #
#   # def artists
#   #   @artists
#   # end
#   #
#   # def artists=(new_artists)
#   #   @artists = new_artists
#   # end
#   #
#   # def genre
#   #   @genre
#   # end
#   #
#   # def genre =(new_genre )
#   #   @genre = new_genre
#   # end
#
# end

class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@artists = []
  @@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre =  genre
    @@genres << @genre
		@@artists << @artist
		@@count += 1

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

  # def self.genre_count
  #   # @@genres.uniq.map
  #   # @@genres.uniq.map
  #   @@genres.uniq.map  do |key, value|
  #    "#{key}=>#{value}"
  #   end
  #
  # end
  def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
  genre_count
end

def self.artist_count
  @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
end
end
