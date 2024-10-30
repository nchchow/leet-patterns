require_relative "models/index"

# Defined abstract factory interface
class GUIFactory
  def create_button
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def create_checkbox
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class LightThemeFactory < GUIFactory
  # Implement concrete factory
end

class DarkThemeFactory < GUIFactory
  # Implement concrete factory
end

# Refactor client_code to use abstract factory.
# Try to do so so that the client code is not aware of the theme.
# ie) client_code(factory) instead of client_code(theme)
def client_code(theme = "light")
  if (theme == "light")
    button = LightButton.new
    checkbox = LightCheckbox.new
  else
    button = DarkButton.new
    checkbox = DarkCheckbox.new
  end

  puts button.render
  puts checkbox.render
end

client_code("light")
