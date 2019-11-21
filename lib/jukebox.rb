require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end


def play(songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
   if(1..9).to_a.include?(song_to_play.to_i)
     puts "Playing #{songs[song_to_play.to_i - 1]}"
   elsif songs.include?(song_to_play)
     puts "Playing #{song_to_play}"
   else
     puts "Invalid input, please try again"
   end
 end

def list(songs) 
  songs.each_with_index{|song, i| puts "#{i + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye."
end 

def run(songs)
  puts "Please enter a command:"
  input = gets.strip

    case input
      when "exit"
        exit_jukebox
        
      when "help"
        help
        
      when "list"
        list(songs)
        
      when "play"
        play(songs)
        
      else
        puts "Invalid Command"
        input
    end
end