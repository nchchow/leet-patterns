class Hamburger
  def initialize
    @ingredients = []
  end

  def add(ingredient)
    @ingredients << ingredient
  end

  def show_ingredients
    @ingredients.join(", ")
  end
end
