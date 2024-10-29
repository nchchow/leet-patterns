class State
  def fill_gas
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def low_gas_indicator
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def move_vehicle
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
