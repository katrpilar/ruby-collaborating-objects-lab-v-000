<<<<<<< HEAD
require 'pry'
class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    newitems = filename.split(/ \- |\./)
    songname = newitems[1]
    artistname = newitems[0]
    song = self.new(songname)
    song.artist_name = artistname
    song
    
=======
class Song
  
  attr_accessor :artist, :song_name
  
  def initialize(song_name)
    @song_name = song_name
  end
  
  def new_by_filename
>>>>>>> 43209efd52f23da2b14222bd25674a313c22bbdc
    #parse a filename
    #create a new song 
    #associate new song to artist_name
    #return new song instance
  end
  
<<<<<<< HEAD
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.add_song(self) 
    else
      self.artist.name = name
      self.artist.add_song(self) 
=======
  def artist_name
    if self.artist == nil 
      #create new artist
      Artist.find_or_create_by_name(name)
    else
      return self.artist.name
>>>>>>> 43209efd52f23da2b14222bd25674a313c22bbdc
    end
  end
end