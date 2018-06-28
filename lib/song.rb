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

def self.create_by_name(name)
  
  s = self.new
  s.name = name
  s.save
  s
end

def self.find_by_name(name)
  @@all.each do |song|
    if song.name == name
      return song
    end
  end  
end

def self.find_or_create_by_name(find_this_song)
    # This method will accept a string name for a song and 
    # either return a matching song instance with that name 
    # or create a new song with the name and return the song instance.
    did_i_find_it = self.all.detect {|x| x.name == find_this_song}
    if did_i_find_it == nil
      s = self.new 
      s.name = find_this_song
      s.save 
      s
    else
      did_i_find_it
    end
  end 
  
end
  
  






