# Add your code here
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs_array)
    puts "Please enter a song name or number:"
    input = gets.chomp

    if(1..9).to_a.include?(input.to_i)
        puts "Playing #{songs_array[input.to_i - 1]}"
    elsif songs_array.include?(input)
        puts "Playing #{input}"
    else
        puts "Invalid input, please try again"
    end
end

def list(song_array)
    song_array.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run
    puts "Please enter a command:"
    user_input = gets.strip
end