class ShoppingCart
  attr_reader :product, :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(item)
    @products << item
  end

  def total_number_of_products
    products.select do |product|
      product.quantity.count
    end
  end

  def products_by_category(product_type)
    item_category = @products.select do |product|
      product.category == product_type
    end
    item_category
  end

  def details
    details = Hash.new
    details.each do |name, capacity|
      details = ShoppingCart.new(name, capacity)
    end
    details
  end
end
