require_relative 'models/index'

class PizzaFacade
  # Your code here
end

# TARGET:
# def client_code
#   pizza_facade = PizzaFacade.new
#   pizza_facade.handle_pizza_order
#   pizza_facade.close_store
# end

# Refactor this to use the Facade pattern to the target client_code
def client_code
  store = Store.new
  pizza_chef = PizzaChef.new(store: store)
  store_operator = StoreOperator.new(store: store)
  delivery_person = DeliveryPerson.new

  puts store_operator.open_store
  puts pizza_chef.turn_oven_on
  puts pizza_chef.prepare_dough
  puts pizza_chef.add_toppings
  puts pizza_chef.place_pizza_in_oven
  puts delivery_person.deliver_order
  puts store_operator.close_store
end

client_code

require 'rspec'

RSpec.describe client_code do
  it "The pizza is ordered and delivered successfully" do
    expect { client_code }.to output("Opening store\nTurning oven on\nPreparing dough\nAdding toppings\nPlacing pizza in oven\nDelivering order\nClosing store\n").to_stdout
  end
end
