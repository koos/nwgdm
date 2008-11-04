class FileHelper
  
  def initialize(filename)  
     puts "setting filename=", filename   
     @filename = filename  
  end
  
  def write_to_file(what)
    File.open(@filename, 'w+') do |f|
      f.write(what.join("\n"))
    end
    
  end  
end