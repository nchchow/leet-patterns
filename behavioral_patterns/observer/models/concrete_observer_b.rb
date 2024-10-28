require_relative 'observer'

class ConcreteObserverB < Observer
  def update(data)
    puts "ConcreteObserverB received data: #{data}"
  end
end
