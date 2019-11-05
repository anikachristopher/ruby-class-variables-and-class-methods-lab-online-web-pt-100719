class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = [] 
  @@artists = []
  
  
  def initialize(name, genre, artist) 
    @name = name
    @artists = artist
    @genres = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end
  
  def self.genres 
    @@genres.uniq! 
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genres| 
      if genre_count[genres] 
        genre_count[genres] +=1 
      else 
        genre_count[genres] = 1 
      end
    end
    genre_count  
  end  
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] +=1 
      else 
        artist_count[artist] = 1 
      end
    end
    artist_count
  end
    
  
end
  