require 'rspec'
require_relative 'models/car'
require_relative 'models/bike'

class VehicleFactory
  def self.create_vehicle(vehicle_type)
    # Your code here
  end
end

# Don't modify the tests below. Your implementation should pass these tests
# You can run the tests by running the command `rspec creational_patterns/factory/index.rb`

RSpec.describe VehicleFactory do
  describe '.create_vehicle' do
    it 'creates a Car instance' do
      car = VehicleFactory.create_vehicle(:car)
      expect(car).to be_an_instance_of(Car)
      expect(car.describe).to eq("This is a car.")
    end

    it 'creates a Bike instance' do
      bike = VehicleFactory.create_vehicle(:bike)
      expect(bike).to be_an_instance_of(Bike)
      expect(bike.describe).to eq("This is a bike.")
    end

    it 'raises an error for unknown vehicle types' do
      expect { VehicleFactory.create_vehicle(:moose) }.to raise_error(ArgumentError, "Unknown vehicle type: moose")
    end
  end
end
