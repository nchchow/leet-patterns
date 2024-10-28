class HamburgerBuilder
  def initialize
    @hamburger = Hamburger.new
  end

  def add_patty
    @hamburger.add("Patty")
  end

  def add_lettuce
    @hamburger.add("Lettuce")
  end

  def add_tomato
    @hamburger.add("Tomato")
  end

  def add_cheese
    @hamburger.add("Cheese")
  end

  def get_hamburger
    @hamburger
  end
end
