class Subject
  def initialize
    @observers = []
  end

  def attach(observer)
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify(data)
    @observers.each { |observer| observer.update(data) }
  end
end

class Observer
  def update(data)
    raise NotImplementedError, "This method should be overridden in subclasses"
  end
end

class ConcreteObserverA < Observer
  def update(data)
    puts "ConcreteObserverA received data: #{data}"
  end
end

class ConcreteObserverB < Observer
  def update(data)
    puts "ConcreteObserverB received data: #{data}"
  end
end
