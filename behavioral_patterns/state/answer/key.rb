require_relative 'states/FullState'
require_relative 'states/EmptyState'
require_relative 'states/LowState'
require_relative 'states/PartialState'

class Tank
  attr_accessor :state

  def initialize
    state = FullState.new
  end

  def fill_gas
    state.fill_gas
  end

  def low_gas_indicator
    state.low_gas_indicator
  end

  def move_vehicle
    state.move_vehicle
  end
end
