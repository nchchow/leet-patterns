class VehicleFactory
  def self.create_vehicle(vehicle_type)
    case vehicle_type
    when :car
      Car.new
    when :bike
      Bike.new
    else
      raise ArgumentError, "Unknown vehicle type: #{vehicle_type}"
    end
  end
end
