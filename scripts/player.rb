# The player class, a fun mess!
# Keep on top of this, it'll get weird fast
class player
  def initialize(name, x, y, hp, atk, df, mp)
    @name     = name
    @x        = x
    @y        = y
    @health   = hp
    @attack   = atk
    @defense  = df
    @mana     = mp
    @char_rep = "+"
    # Everything is an instance var!
    # Yes even the ANSI character that represents the player
  end

  def move(new_x, new_y)
    puts "#{@name} has moved from #{@x}, #{@y} to #{new_x}, #{new_y}."
    @x = new_x
    @y = new_y
  end
end
