class Film
    attr_accessor :name, :description, :director, :producer, :release_date, :rt_score
    @@all = []

    def initialize(name)
        @name = name
        @description = description
        @director = director 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.find_by_name(name)
        @@all.select {|f| f.name == name}
    end 
    
end 