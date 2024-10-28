require 'rspec'

class Strategy
  def execute
    raise NotImplementedError, "This method should be overridden in subclasses"
  end
end

class Context
  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy
    # Your code here
  end
end

# Don't modify the tests below. Your implementation should pass these tests.
# Run the tests by running `rspec creational_patterns/strategy/index.rb`

RSpec.describe Context do
  describe '#execute_strategy' do
    it 'executes Strategy A' do
      strategy_a = StrategyA.new
      context = Context.new(strategy_a)
      expect(context.execute_strategy).to eq("Executing Strategy A")
    end

    it 'executes Strategy B' do
      strategy_b = StrategyB.new
      context = Context.new(strategy_b)
      expect(context.execute_strategy).to eq("Executing Strategy B")
    end

    it 'allows changing strategy at runtime' do
      strategy_a = StrategyA.new
      context = Context.new(strategy_a)
      expect(context.execute_strategy).to eq("Executing Strategy A")

      strategy_b = StrategyB.new
      context = Context.new(strategy_b)
      expect(context.execute_strategy).to eq("Executing Strategy B")
    end
  end
end
