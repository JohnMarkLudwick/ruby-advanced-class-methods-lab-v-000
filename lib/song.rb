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
    # initializes a song and saves it to the @@all class variable 
    # either literally or through the class method
    s = self.new 
    s.save 
    s
  end 
  

song = Song.new_by_name("The Middle")
song.name

    
    


end
