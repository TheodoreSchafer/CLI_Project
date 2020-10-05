class CLI

    def start 
        puts ""
        puts "Welcome to Ghibli Directory!"
        puts ""
        puts "Which Studio Ghibli film would you like information on?"
        puts ""
        API.fetch_film
        
        films = Film.all
        print_films(films)

        puts "Type the number or name of movie to access information, or type exit to exit."
        puts ""

        @film = gets.strip.downcase
        

        while @film != 'exit' do
            Film.find_by_name(@film)
            API.fetch_film_info(@film)
           

        end 
        
       
        
    end 

    def print_films(films)
        puts "Here are your choices."
        puts ""
        
        films.each.with_index(1) do | f, i |
           puts "#{i}. #{f.name}"
           
        end 
        puts ""
        
    end 
end 