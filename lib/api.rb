class API

    def self.fetch_film(film)
         url = "https://ghibliapi.herokuapp.com/films/"
         uri = URI(url)
         response = Net::HTTP.get(uri)
         films = JSON.parse(response)
            films.each do |f|
                Film.new(name: f["title"])
           
            
            
         end 
         
         

        
       
      
        
    end 


end 