class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(item)
    @products << item
  end

  def total_number_of_products
    sum += product.quantity
  end

  def products_by_category(product_type)
    item_category = @products.select do |product|
      product.category == product_type
    end

    item_category
  end
end
