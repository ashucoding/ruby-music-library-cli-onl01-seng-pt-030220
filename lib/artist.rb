class Artist 
  
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
  
  def self.create(artist_name)
    self.new(artist_name)
    end
    
    def add_song(song)
      #if song.artist != self
      if song.artist == nil
        song.artist = self
    end
    if !@songs.include?(song)
      @songs << song
    end
  end
end