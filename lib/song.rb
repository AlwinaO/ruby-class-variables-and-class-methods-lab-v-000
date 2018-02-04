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
      @@artists << artist
      @@genres << genre

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
      frequencies = Hash.new { |hash, key| hash[key] =  }
      @@genres.group_by {|genre| genre +=1}

    end

    def self.artist_count


    end


  end
