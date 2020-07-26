class Iterator
  def initialize(collection)
    @index = 0
    @collection = collection
  end

  def next
    @index += 1 if @index < @collection.length
    @collection[@index]
  end

  def has_next?
    !@collection[@index + 1].nil?
  end
end
