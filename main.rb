require_relative 'scripts/new_save'
require_relative 'scripts/clear_console'

def main
  puts '::::    ::::::::::::::::::::::::::::::::::: :::::::::  ::::::::  
+:+:+: :+:+:+   :+:        :+:    :+:    :+::+:    :+::+:    :+: 
+:+ +:+:+ +:+   +:+        +:+    +:+    +:++:+    +:++:+        
+#+  +:+  +#+   +#+        +#+    +#++:++#: +#++:++#+ :#:        
+#+       +#+   +#+        +#+    +#+    +#++#+       +#+   +#+# 
#+#       #+#   #+#        #+#    #+#    #+##+#       #+#    #+# 
###       ###   ###        ###    ###    ######        ######## '
  print "\nMade with love and patience by c0smic. <3\n"
  print "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  print "\n"
  print "1. New Game\n2. Load Save\n3. Credits\n4. Exit\n"
  print "(int) :: "
  menu_choice = gets.to_i

  if menu_choice == 1
    clear
    create_save_character
    # ./scripts/new_save.rb
  end
end

if __FILE__ == $0
  main
end