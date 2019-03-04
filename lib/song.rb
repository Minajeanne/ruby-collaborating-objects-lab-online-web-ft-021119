require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by_name(name)
  # end

  def self.new_by_filename(filename)
    array = filename.split(/[-,]/)
    @artist = array[0].strip
    @song.artist = @artist
    @song_name = array[1].strip
    @song = Song.new(@song_name)
    @artist = Artist.find_or_create_by_name(@artist)
    #  binding.pry
    @song
  end

  # song = self.new
  # song_info = file.chomp(".mp3").split(" - ")
  # song = Song.new(song_info[1])
  # song.artist_name = song_info[0]

# def self.new_by_filename(file)
#   artist_name, song_name, extra = filename.split(" - ")
#    song = self.new(song_name)
#    artist = Artist.find_or_create_by_name(artist_name)
#    artist.add_song(song)
#  end
  # def self.new_by_filename(filename)
  #   song = self.new
  #   song_name = filename.split(" - ")[1]
  #   artist_name = filename.split(" - ")[0]
  #   song.artist = Artist.find_or_create_by_name(name)
  #   song
  # end
end
