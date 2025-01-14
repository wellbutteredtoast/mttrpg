require_relative './clear_console'

def create_save_character
  puts "================================================\n"
  print "What is the heros name?\n\n:: "
  p_name = gets.chomp
  start_x = -1
  start_y = -1

  print "\nWhat difficulty will you choose?\n\n1. Trvial\n2. Easy\n3. Normal\n4. Hard\n5. Expert\n6. Master\n\n(int) :: "
  p_difficulty = gets.to_i
  valid_list = [1, 2, 3, 4, 5, 6]

  if !valid_list.include?(p_difficulty)
    puts "Input #{p_difficulty} is not a valid selection..."
    create_save_character
    # Yeah this makes you redo the character name, but this is step two...
    # I don't think retyping a name is the end of the world (yet)
  elsif p_difficulty == 1
    # Trivial...
  elsif p_difficulty == 2
    # Easy...
  elsif p_difficulty == 3
    # Normal...
  elsif p_difficulty == 4
    # Hard...
  elsif p_difficulty == 5
    # Expert...
  elsif p_difficulty == 6
    # Master...
  end
end
