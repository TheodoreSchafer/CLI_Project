class CLI

    def start 
        puts ""
        puts "Welcome to Ghibli Directory!"
        puts ""
        puts "Which Studio Ghibli film would you like information on?"
        puts ""
        @film = gets.strip.downcase
        puts ""
        API.fetch_film(@film)
       


    end 
end 