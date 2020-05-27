class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    @@all.push(self)
  end
  
  def self.all 
    return @@all
  end
  
  def self.new_by_filename(file_name)
    new_artist = file_name.split(" - ")[0]
    new_song = file_name.split(" - ")[1]
    song = Song.new(new_song)
    song.artist_name = new_artist
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist 
    artist.add_song(self)
  end
  
end