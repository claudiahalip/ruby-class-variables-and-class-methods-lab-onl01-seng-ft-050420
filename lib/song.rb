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
    
  def self.genre_count
    
    genre_count = Hash.new
    @@genres.each_with_object do |genre, genre_count| 
      if genre_count[genre]
      genre_count[genre] += 1 
    end
    genre_count 
    
    
  end
  
  def self.artist_count
    artist_count = Hash.new
    @@artists.inject(artist_count.new(0)) { |total, e| total[e] += 1 ;total}
    
    artist_count
    
    
    
  end
end