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
  # all your other stuff in here - like get user
  def print_main
    @main_dishes.each_with_index do |dish, index|
      puts "#{index +1}) #{dish.info}"
    end
  end

  # @contact.each_with_index do |cont, index|
  #   puts "#{index + 1}) #{cont[:name].split.map(&:capitalize).join(' ')}"
  # end

  def print_side
    @side_dishes.each_with_index do |dish, index|
      puts "#{index +1}) #{dish.info}"
    end
  end



  def menu
    puts "What is your name?"
    gets.strip

    puts "How much money do you have?"
    money = gets.to_i

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
  puts "--------------------#{@user_main.name}"
end

#     puts "Choose your side dish"
#     print_side
#     case gets.to_i
#     when 1
#       @user_main = @side_dishes[0]
#     when 2
#       @user_main = @side_dishes[1]
#     when 3
#       @user_main = @side_dishes[2]
#     else
#       puts "invalid input"
      
#   end
#   puts "--------------------#{@user_main.name}"

end


food = LunchLady.new
food.menu