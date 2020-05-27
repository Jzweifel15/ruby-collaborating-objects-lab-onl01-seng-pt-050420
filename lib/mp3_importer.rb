class MP3Importer
  
  attr_accessor :file_path
  
  def initialize(file_path)
    @file_path = file_path
  end
  
  def files
    files = []
    Dir.new(self.path).each do |file|
      files.push(file) if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
  
end