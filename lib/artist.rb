class Artist 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def song_count
    @@song_count = []
    Song.all.collect{|song| if song.artist == self
      @@song_count << song
    end}
    @@song_count.size
  end
    
  
end