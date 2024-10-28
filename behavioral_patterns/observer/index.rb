require 'rspec'
require_relative 'models/concrete_observer_a'
require_relative 'models/concrete_observer_b'

class Subject
  def initialize
    @observers = []
  end

  def attach(observer)
    # Your code here
  end

  def detach(observer)
    # Your code here
  end

  def notify
    @observers.each { |observer| observer.update(data) }
  end
end

# Don't modify the tests below. Your implementation should pass these tests.
# Run the tests by running `rspec behavioral_patterns/observer/index.rb`

RSpec.describe Subject do
  let(:subject) { Subject.new }
  let(:observer_a) { ConcreteObserverA.new }
  let(:observer_b) { ConcreteObserverB.new }

  before do
    subject.attach(observer_a)
    subject.attach(observer_b)
  end

  it 'notifies all observers when data is updated' do
    expect { subject.notify("Hello, Observers!") }.to output(
      "ConcreteObserverA received data: Hello, Observers!\n" \
      "ConcreteObserverB received data: Hello, Observers!\n"
    ).to_stdout
  end

  it 'allows observers to detach themselves' do
    subject.detach(observer_a)
    expect { subject.notify("Goodbye, Observers!") }.to output(
      "ConcreteObserverB received data: Goodbye, Observers!\n"
    ).to_stdout
  end
end
