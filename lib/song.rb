require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  # def intialize
  # end

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
  
def self.new_by_name(string_name_of_the_song)
    # takes in the string name of a song and returns a 
    # song instance with that name set as its name property. 
    
    # should return an instance of Song and not a simple string or anything else.
    s = self.new 
    s.name = string_name_of_the_song
    s
    # there's nothing in the instructions about saving to the @@all class variable
  end 

def self.create_by_name(new_song_name)

  s = self.create
  s.name = new_song_name
  s
end

def self.find_by_name(name)
  @@all.find do |song|
    song.name == name
  
  end  
end

def self.find_or_create_by_name(name)
   found_song = self.find_by_name(name)
   if found_song
     found_song
   else 
     
      self.create_by_name(name)
     
   end
end  
  
def self.alphabetical
    self.all.sort_by { |x| x.name}
  end 

def new_from_filename
  
  Song.new
  
end  
  
end
  
  






