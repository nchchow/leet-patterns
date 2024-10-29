require_relative 'State'

class PartialState < State
  def fill_gas
    "Gas tank is now full"
  end

  def low_gas_indicator
    "Low gas indicator is off"
  end

  def move_vehicle
    "Moving vehicle"
  end
end
