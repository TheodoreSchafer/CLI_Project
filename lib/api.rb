class API

    def self.fetch_film
         url = "https://ghibliapi.herokuapp.com/films/"
         uri = URI(url)
         response = Net::HTTP.get(uri)
         films = JSON.parse(response)
         
         
            films.each do |f|
                Film.new(name: f["title"], description: f["description"], director: f["director"], release_date: f["release_date"], producer: f["producer"])
                
            end 
        
    end 


  
end

