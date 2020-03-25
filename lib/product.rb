class Product
  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = 3.70
    @quantity = quantity.to_i
  end

  def total_price
    total = @unit_price * @quantity
    total.ceil.to_f
  end

  def hoard
  end
  
  def is_hoarded?
    if quantity > 2
      true
    else
      false
    end
  end
end
