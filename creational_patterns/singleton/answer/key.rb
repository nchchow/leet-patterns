class Singleton
  @instance = nil

  private_class_method :new

  def self.instance
    @instance ||= new
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
