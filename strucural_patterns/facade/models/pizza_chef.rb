require_relative "store"

class PizzaChef
  def initialize(store:)
    @store = store
  end

  def turn_oven_on
    @store.is_oven_on = true
    "Turning oven on"
  end

  def prepare_dough
    "Preparing dough"
  end

  def add_toppings
    "Adding toppings"
  end

  def place_pizza_in_oven
    "Placing pizza in oven"
  end

  def turn_oven_off
    @store.is_oven_on = false
    "Turning oven off"
  end
end
