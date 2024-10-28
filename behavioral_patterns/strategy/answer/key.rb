class Strategy
  def execute
    raise NotImplementedError, "This method should be overridden in subclasses"
  end
end

class StrategyA < Strategy
  def execute
    "Executing Strategy A"
  end
end

class StrategyB < Strategy
  def execute
    "Executing Strategy B"
  end
end

class Context
  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy
    @strategy.execute
  end
end
