quit = true
while quit == true
  movies = { :Batman => 4, :Catwoman => 1, :Lions => 3.5}
  puts "What would you like to do?"
  puts "-- Type \"add\" to add a movie to the list."
  puts "-- Type \"update\" to update a movie rating."
  puts "-- Type \"display\" to see the movie list."
  puts "-- Type \"delete\" to delete a movie from the list."
  puts "-- Type \"quit\" or \"exit\" to quit this program."

  choice = gets.chomp.downcase

  case choice
  when "add"
      print "Title: "
      title = gets.chomp.to_sym
      if movies[title] == nil
          print "Rating: "
          rating = gets.chomp.to_i
          movies[title] = rating
          puts "#{title}: #{rating} was added to the list!"
      else
          puts "#{title} is already on the list with a rating of #{movies[title]}"
      end
      puts 
  when "update"
      puts "Title: "
      title = gets.chomp.to_sym
      if movies[title] == nil
          puts "#{title.to_s} is not on the list!"
      else
          puts "Rating: "
          rating = gets.chomp.to_i
          movies[title] = rating
          puts "#{title}: #{rating} was updated!"
      end
      puts
  when "display"
      movies.each do |k,v|
          puts "#{k}: #{v}"
      end
      puts
  when "delete"
      puts "Title: "
      title = gets.chomp.to_sym
      if movies[title] == nil
          puts "#{title.to_s} is not on the list!"
      else
          movies.delete(title)
          puts "#{title.to_s} has been deleted from the list!"
      end
      puts
  when "quit" || "exit"
      quit = false
      break
  else
      puts "Error!"
      puts
  end
end