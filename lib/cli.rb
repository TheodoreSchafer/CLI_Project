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
        puts "Type the corresponding number for the movie you would like to learn about, or type exit to exit."
        puts ""
        film = gets.strip.downcase
        while film != 'exit' do
            if film == 'list'
                print_films(films)
                puts "Enter corresponding number to the movie you would like to learn about."
                puts ""
            elsif film.to_i > 0 && film.to_i <= Film.all.length
            f = Film.all[film.to_i - 1]
            print_film_info(f)
            puts ""
            puts "If you would like to see the list of movies again, type 'list'"
            puts ""
            puts "If you would like to exit, type 'exit'"
            puts ""
            else
                puts ""
                puts "Invalid input, please try again"
                puts ""
            end 
        film = gets.strip.downcase
        end
        puts ""
        puts "Goodbye!"
        puts ""
    end

   
    def print_films(films)
        puts ""
        puts "Here are your choices."
        puts ""
        films.each.with_index(1) do | f, i |
           puts "#{i}. #{f.name}"
        end 
        puts ""
    end 


    def print_film_info(film)
        puts ""
        puts "#{film.name}"
        puts "----------------------------"
        puts "Description - #{film.description}"
        puts "----------------------------"
        puts "Director - #{film.director}"
        puts "----------------------------"
        puts "Producer - #{film.producer}"
        puts "----------------------------"
        puts "Year of Release - #{film.release_date}"
        puts "----------------------------"
    end 

   
 
    
end 