class MP3Importer
<<<<<<< HEAD
  attr_accessor :import, :path, :files
=======
  attr_accessor :import, :files
>>>>>>> 43209efd52f23da2b14222bd25674a313c22bbdc
  
  def initialize(path)
    @path = path
  end
  
  def files
<<<<<<< HEAD
    @files = Dir.entries(@path)
    @files.delete(".")
    @files.delete("..")
    @files
  end
  
  def import
    files.each{|item| Song.new_by_filename(item)}
    
    #if Artist.all.name == i[0] add_song(item)
      #val.add_song(item)
      #if there is already an existing artist just add the song
      #if Artist.all.detect{|item| item.name == i[0]} != nil
        #Artist.all.name.include?(i[0])
        #add the song to the existing songs list 
      #else
        #new_music = Artist.new(i[0])
        #new_music.add_song(i[1])
      #end
=======
  end
  
  def import(name)
    song = Song.new_by_filename(name)
>>>>>>> 43209efd52f23da2b14222bd25674a313c22bbdc
  end


end