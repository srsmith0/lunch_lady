# I was partners with Javier.  I couldn't get the pull function to work on GitHub so we talked through
# slack while coding separately.  I'm having a lot of trouble figuring out how classes work and wasn't
# able to complete the program.  I tried to program from another angle but was getting an unexpected
# keyword_end, expecting end-of-input error that I still can't figure out why.  I'm guessing I'm 
# mixing up instance functions with classes or not invoking them correctly.  Same goes for the 
# original commented out code block.  For some reason the side_dish function works in some spots
# of the code and not others which stops the program from functioning.  I really need to see some
# more examples or some clarification because I can't find the answers I need online.  

require_relative 'main_dish'
require_relative 'side_dish'

class LunchLady
  def  initialize
    @main_dishes = [
      MainDish.new('Meatloaf', 5),
      MainDish.new('Tacos', 3),
      MainDish.new('Casserole', 6),
      MainDish.new('Burger', 4)]
    @side_dishes = [
      SideDish.new('Beans', 1),
      SideDish.new('Rice', 2),
      SideDish.new('Corn', 1)]
  end
  #***********trying to break up each task to own function
  def greet
    puts "What is your name"
    gets
    puts "How much money do you have"
      @money = gets.to_i
  end

  def menu
    puts "Choose your main dish"
    print_main
    case gets.to_i
    when 1
      @user_main = @main_dishes[0]
    when 2
      @user_main = @main_dishes[1]
    when 3
      @user_main = @main_dishes[2]
    when 4
      @user_main = @main_dishes[3]
    else
      puts "invalid input"
     end
  puts "-------#{@user_main.name}"
    end 
  end

  # def side_dish 
  #   puts "Choose Two Sides"
  #     print_side
  #     case gets.to_i
  #      when 1
  #       @user_main = @side_dishes[0]
  #       when 2
  #       @user_main = @side_dishes[1]
  #       when 3
  #       @user_main = @side_dishes[2]
  #       else
  #       puts "invalid input"    
  #       end
  #   puts "--------------------#{@user_main.name}"
  #     end
  #   end


  def print_main
    @main_dishes.each_with_index do |dish, index|
      puts "#{index +1}) #{dish.info}"
    end
  end

  def print_side
    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish.info}"
    end
  end

  def main_menu
    greet
    menu
    # side_dish
  end
end

########end function attempt

  # def main_menu
  #   puts "What is your name?"
  #   gets.strip

  #   puts "How much money do you have?"
  #   money = gets.to_i

  #   puts "Choose your main dish"
  #   print_main
  #   case gets.to_i
  #   when 1
  #     @user_main = @main_dishes[0]
  #   when 2
  #     @user_main = @main_dishes[1]
  #   when 3
  #     @user_main = @main_dishes[2]
  #   when 4
  #     @user_main = @main_dishes[3]
  #   else
  #     puts "invalid input"
  #    end
  # puts "-------#{@user_main.name}"
  #   end 
   
   
  #   puts "Choose Two Sides"
  #     print_side
  #   case gets.to_i
  #    when 1
  #     @user_main = @side_dishes[0]
  #     when 2
  #     @user_main = @side_dishes[1]
  #     when 3
  #     @user_main = @side_dishes[2]
  #     else
  #     puts "invalid input"    
  #     end
  # puts "--------------------#{@user_main.name}"
  #   end
  # end

food = LunchLady.new
food.main_menu
