class PizzaFacade
  def initialize
    @store = Store.new
    @pizza_chef = PizzaChef.new(store: @store)
    @store_operator = StoreOperator.new(store: @store)
    @delivery_person = DeliveryPerson.new

    open_store
  end

  def open_store
    puts @store_operator.open_store
  end

  def close_store
    puts @store_operator.close_store
  end

  def handle_pizza_order
    puts @pizza_chef.turn_oven_on
    puts @pizza_chef.prepare_dough
    puts @pizza_chef.add_toppings
    puts @pizza_chef.place_pizza_in_oven
    puts @delivery_person.deliver_order
  end
end

def client_code
  pizza_facade = PizzaFacade.new
  pizza_facade.handle_pizza_order
  pizza_facade.close_store
end

client_code
