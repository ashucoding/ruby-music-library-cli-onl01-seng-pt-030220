class Genre 
  attr_accessor :name, :songs
  
  @@all = []

def initialize(name)
  @name = name
  @songs = []
  save
end

def self.all
  @@all
end

def self.destroy_all
  @@all = []
end

def save
  @@all << self
end

def self.create(genre)
  self.new(genre)
end

end