require './iterator.rb'

class ItemCollection
  def initialize(collection)
    @collection = Iterator.new collection
  end

  def each(&block)
    while @collection.has_next?
      block.call(@collection.next)
    end
  end
end
