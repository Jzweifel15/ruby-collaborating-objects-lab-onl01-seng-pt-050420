class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Dir.new(self.path).each do |file|
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