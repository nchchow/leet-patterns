class Observer
  def update(data)
    raise NotImplementedError, "This method should be overridden in subclasses"
  end
end
