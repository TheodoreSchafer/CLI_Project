class Film
    attr_accessor :name, :description, :director, :producer, :release_date
    @@all = []

    def initialize(name:, description:, director:, release_date:, producer:)
        @name = name
        @description = description
        @director = director 
        @release_date = release_date
        @producer = producer
        @@all << self
    end 

    def self.all
        @@all
    end 

end 