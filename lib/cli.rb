class CLI

    def start 
        puts ""
        puts "Welcome to Ghibli Directory!"
        puts ""
        puts "Which Studio Ghibli film would you like information on?"
        puts ""
        
        films = Film.all
        print_films(films)
        puts ""

        
        API.fetch_film(@film)
        @film = gets.strip.downcase
      
        end 

    def print_films(films)
        
        films.each_with_index do |f, i|
            puts "#{i}. #{f.name}"
            binding.pry
        end 
        
    end 
end 