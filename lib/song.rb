class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    self.all << song
    song
  end

  def self.alphabetical
    self.all.sort_by! {|song| song.name }
  end


  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def SONG.NEW_FROM_FILENAME(filename)
    a = filename.split(" - ")
    song = self.new
    song.artist_name = a[0]
    song.name = a[1].split(".")[0]
    song
  end

  def SONG.CREATE_FROM_FILENAME

  end

  def SONG.DESTROY_ALL
    @@all.clear
  end
end
