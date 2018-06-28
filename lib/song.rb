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

  def Song.create(title)
    @@all = title
    title << self
  end


end
