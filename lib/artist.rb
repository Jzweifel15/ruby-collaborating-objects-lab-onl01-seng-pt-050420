class Artist
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all.push(self)
  end
  
  def self.all
    return @@all
  end
  
  def add_song(song)
    @songs.push(song)
    song.artist = self
  end
  
  def songs 
    return @songs
  end
  
  def self.find_or_create_by_name(artist_name)
    
    found = self.all.find {|artist| artist.name == artist_name}
    if found
      return found
    else
      new_artist = self.new(artist_name)
      return new_artist
    end
    
=begin
    if self.all.find == artist_name
      return artist_name
    else
      new_artist = Artist.new(artist_name)
      @@all.push(new_artist)
      return new_artist
    end
=end 
  
  end
  
  def print_songs
    
  end
  
end