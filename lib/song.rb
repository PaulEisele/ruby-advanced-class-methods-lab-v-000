class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def SONG.CREATE
    song = Song.create
    Song.all.include?
  end

  def SONG.NEW_BY_NAME    
    
  end

  def SONG.NEW_FROM_FILENAME

  end

  def SONG.CREATE_FROM_FILENAME

  end

  def SONG.DESTROY_ALL
    song.clear
  end 
end
