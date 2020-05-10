class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    
  end
  
  def self.count
     return @@count
  end 
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq
  end
    
  def self.genre_count(genre)
    
    genre_count = Hash.new
    @@genres.each_with_object do |gen, genre_count| 
      if genre_count[gen]
        genre_count[gen] += 1 
      else
        genre_count[gen] = 1
      end
    end
    
    genre_count 
  end
  
  
  def self.artist_count(artist)
    artist_count= Hash.new
    artist.each_with_object do |art, artist_count| 
      if artist_count[art]
        artist_count[art] += 1 
      else
        artist_count[art] = 1
      end
    end
    artist_count(@@artist)
  end
  
end
