require 'rspec'
require_relative 'models/hamburger'

class HamburgerBuilder
  # Your code here
end

# Don't modify the tests below. Your implementation should pass these tests.
# Run the tests by running `rspec creational_patterns/builder/index.rb`

RSpec.describe HamburgerBuilder do
  it 'builds a hamburger with all ingredients' do
    builder = HamburgerBuilder.new
    builder.add_patty
    builder.add_lettuce
    builder.add_tomato
    builder.add_cheese

    hamburger = builder.get_hamburger
    expect(hamburger.show_ingredients).to eq("Patty, Lettuce, Tomato, Cheese")
  end

  it 'can build a hamburger with just a patty and lettuce' do
    builder = HamburgerBuilder.new
    builder.add_patty
    builder.add_lettuce

    hamburger = builder.get_hamburger
    expect(hamburger.show_ingredients).to eq("Patty, Lettuce")
  end
end
