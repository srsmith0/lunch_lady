class MainDish
  def  initialize(dish, price)
    @dish = dish
    @price = price
  end

  def info
    return "#{@dish} - $#{@price}"
  end
  def name
    return "#{@dish}"
  end
end