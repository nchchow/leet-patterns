require_relative 'State'

class EmptyState < State
  def fill_gas
    "Gas tank is now full"
  end

  def low_gas_indicator
    "Low gas indicator is on"
  end

  def move_vehicle
    "Cannot move vehicle because tank is empty"
  end
end
