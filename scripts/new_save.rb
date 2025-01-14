require_relative './clear_console'

def create_save_character
  clear_console
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
    sleep 0.5
    clear_console
    create_save_character
    # Yeah this makes you redo the character name, but this is step two...
    # I don't think retyping a name is the end of the world (yet)
  elsif p_difficulty == 1
    # Trivial difficulty, the game will be *quite* easy in this diff.
    pd_string = 'Trivial'
    difficulty_hostile_hp_mod           = 0.65
    difficulty_hostile_atk_mod          = 0.65
    difficulty_hostile_def_mod          = 0.65
    difficulty_hostile_mp_mod           = 0.65
    difficulty_hostile_xp_reward_mod    = 1.33
    difficulty_hostile_coin_reward_mod  = 1.33
    print "\nSave difficulty has been set to Trivial.\n"

  elsif p_difficulty == 2
    # Easy difficulty, the game will be a bit easier than Normal in this diff.
    pd_string = 'Easy'
    difficulty_hostile_hp_mod           = 0.80
    difficulty_hostile_atk_mod          = 0.80
    difficulty_hostile_def_mod          = 0.80
    difficulty_hostile_mp_mod           = 0.80
    difficulty_hostile_xp_reward_mod    = 1.10
    difficulty_hostile_coin_reward_mod  = 1.10
    print "\nSave difficulty has been set to Easy.\n"

  elsif p_difficulty == 3
    # Normal difficulty, the standard mttrpg experience.
    pd_string = 'Normal'
    difficulty_hostile_hp_mod           = 1.00
    difficulty_hostile_atk_mod          = 1.00
    difficulty_hostile_def_mod          = 1.00
    difficulty_hostile_mp_mod           = 1.00
    difficulty_hostile_xp_reward_mod    = 1.00
    difficulty_hostile_coin_reward_mod  = 1.00
    print "\nSave difficulty has been set to Normal.\n"

  elsif p_difficulty == 4
    # Hard difficulty, a slightly more challenging experience.
    pd_string = 'Hard'
    difficulty_hostile_hp_mod           = 1.10
    difficulty_hostile_atk_mod          = 1.10
    difficulty_hostile_def_mod          = 1.10
    difficulty_hostile_mp_mod           = 1.10
    difficulty_hostile_xp_reward_mod    = 0.90
    difficulty_hostile_coin_reward_mod  = 0.90
    print "\nSave difficulty has been set to Hard.\n"

  elsif p_difficulty == 5
    # Expert difficulty, this makes mttrpg much harder.
    pd_string = 'Expert'
    difficulty_hostile_hp_mod           = 1.25
    difficulty_hostile_atk_mod          = 1.25
    difficulty_hostile_def_mod          = 1.25
    difficulty_hostile_mp_mod           = 1.25
    difficulty_hostile_xp_reward_mod    = 0.80
    difficulty_hostile_coin_reward_mod  = 0.80
    print "\nSave difficulty has been set to Expert.\n"

  elsif p_difficulty == 6
    # Master difficulty, recommended for players who are ready for a rough time.
    pd_string = 'Master'
    difficulty_hostile_hp_mod           = 1.33
    difficulty_hostile_atk_mod          = 1.33
    difficulty_hostile_def_mod          = 1.33
    difficulty_hostile_mp_mod           = 1.33
    difficulty_hostile_xp_reward_mod    = 0.66
    difficulty_hostile_coin_reward_mod  = 0.66
    print "\nSave difficulty has been set to Master.\n"
  end

  sleep 1.33
  clear_console

  # After a brief rest, the script will continue on and finalize some details
  # Once confirmed - we can write to the save and get things going
  print "================================================\n"
  print "To finalize, your name is #{p_name} and you have\nchosen #{pd_string}, is that right?\n\n1. Yes!\n2. Go back!\n\n(int) :: "
  finalized = gets.to_i

  if finalized == 2
    puts "Returning to character creation..."
    sleep 1.5
    clear_console
    create_save_character
  elsif finalized == 1
    puts "\nConfirmed!"
  end
end
