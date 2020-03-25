require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingcartTest < Minitest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_attributes
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal "King Soopers", cart.name
    assert_equal 30, cart.capacity
  end
end
