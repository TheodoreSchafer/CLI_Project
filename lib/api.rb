class API

    def self.fetch_film
         url = "https://ghibliapi.herokuapp.com/films/"
         uri = URI(url)
         response = Net::HTTP.get(uri)
         films = JSON.parse(response)
            films.each do |f|
                Film.new(f["title"])
            
        end
    end 

    def self.fetch_film_info(name)
        url = "https://ghibliapi.herokuapp.com/films/"
        uri = URI(url)
        response = Net::HTTP.get(url)
        info = JSON.parse(response)
        binding.pry
        
    end 
end 