class LightThemeFactory < GUIFactory
  def create_button
    LightButton.new
  end

  def create_checkbox
    LightCheckbox.new
  end
end

class DarkThemeFactory < GUIFactory
  def create_button
    DarkButton.new
  end

  def create_checkbox
    DarkCheckbox.new
  end
end

# Note: The client code is now not aware of the theme. Even if we add more themes, the client code will not change.
def client_code(factory)
  button = factory.create_button
  checkbox = factory.create_checkbox
  puts button.render
  puts checkbox.render
end

# Because we encapsulated the theme creation logic in the factory, it is now easy to add more themes.
if (theme == "light")
  factory = LightThemeFactory.new
else
  factory = DarkThemeFactory.new
end

client_code(factory)

# Notes on the Abstract Factory Pattern:
# This is a simple example, and thus may not be the best example to illustrate the power of the Abstract Factory Pattern.
# The Abstract Factory Pattern does make the code more complicated, since a lot of classes are introduced.
# However, it does make the code more flexible and easier to maintain.

# Notes on the pattern in Ruby:
# Ruby does not have interfaces, so we use the NotImplementedError to simulate an interface.
# The reason is because Ruby compiles at runtime, so it is not possible to check if a class implements a method at compile time.
# What we can do to enforce the simulated interface is to run tests against the methods.
