class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

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
      frequencies = Hash.new(0)

      @@genres.each {|genre| genre +=1}

      frequencies = frequencies.group_by {|genre, amount| amount}
      

    end

    def self.artist_count


    end

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@count += 1
      @@artists << artist
      @@genres << genre

    end
  end
