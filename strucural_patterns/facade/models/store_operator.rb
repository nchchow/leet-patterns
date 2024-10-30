require_relative "store"

class StoreOperator
  def initialize(store:)
    @store = store
  end

  def open_store
    @store.is_open = true
    "Opening store"
  end

  def close_store
    @store.is_open = false
    "Closing store"
  end
end
