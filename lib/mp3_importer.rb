class MP3Importer
  
  attr_accessor :file_path
  
  def initialize(file_path)
    @file_path = file_path
  end
  
    def files
    @files ||= Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end

  def import
    files.each {|song| Song.new_by_filename(song)}
  end
  
end