class Song
  attr_accessor :name, :artist_name
  @@all = []

  def intialize
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    s = self.new 
    s.save 
    s
  end 
  


end



song = Song.new_by_name("The Middle")
song.name

