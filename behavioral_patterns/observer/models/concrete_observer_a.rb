require_relative 'observer'

class ConcreteObserverA < Observer
  def update(data)
    puts "ConcreteObserverA received data: #{data}"
  end
end
