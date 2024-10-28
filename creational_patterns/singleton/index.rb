require 'rspec'

class Singleton
  # Your code here
  def self.instance
    # and here
  end

  def initialize
    @state = 0
  end

  def do_something
    @state += 1
    "Doing something! Current state: #{@state}"
  end

  def reset_state
    @state = 0
  end

  def current_state
    @state
  end
end

# Don't modify the tests below. Your implementation should pass these tests
# Run the tests by running `rspec creational_patterns/singleton/index.rb`

RSpec.describe Singleton do
  describe ".instance" do
    it 'returns the same instance for multiple calls' do
      instance1 = Singleton.instance
      instance2 = Singleton.instance
      expect(instance1).to eq(instance2)
    end

    it 'returns the same object across different threads' do
      instances = []
      threads = 10.times.map do
        Thread.new { instances << Singleton.instance }
      end

      threads.each(&:join)

      expect(instances.uniq.size).to eq(1)
    end
  end

  describe '#do_something' do
    before(:each) do
      @instance = Singleton.instance
      @instance.reset_state  # Reset state before each test
    end

    it 'increments the state and returns the expected string' do
      result = @instance.do_something
      expect(result).to eq("Doing something! Current state: 1")
      expect(@instance.current_state).to eq(1)
    end

    it 'increments the state with each call' do
      expect(@instance.do_something).to eq("Doing something! Current state: 1")
      expect(@instance.do_something).to eq("Doing something! Current state: 2")
      expect(@instance.current_state).to eq(2)
    end

    it 'returns consistent results across multiple calls' do
      3.times { @instance.do_something }
      expect(@instance.current_state).to eq(3)
    end

    it 'can reset the state' do
      @instance.do_something
      @instance.reset_state
      expect(@instance.current_state).to eq(0)
    end
  end

  describe 'thread safety' do
    it 'ensures instance is the same in concurrent threads' do
      threads = []
      results = []

      5.times do
        threads << Thread.new do
          results << Singleton.instance.object_id
        end
      end

      threads.each(&:join)

      expect(results.uniq.size).to eq(1)
    end
  end
end
