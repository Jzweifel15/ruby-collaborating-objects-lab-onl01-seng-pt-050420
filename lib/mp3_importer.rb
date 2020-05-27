class MP3Importer
  
  attr_accessor :file_path
  
  def initialize(file_path)
    @file_path = file_path
  end
  
  def files
    files = []
    Dir.new(self.file_path).each do |file|
      files.push(file) if file.length > 4
    end
    return files
  end

  def import
    self.files.each do |file_name|
      Song.new_by_filename(file_name)
    end
  end
  
end