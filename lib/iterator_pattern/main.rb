require './iterator.rb'
require './item_collection.rb'

arr = ['asd', 1, 2, 'super', 'chopa']

i = Iterator.new(arr)

while i.has_next?
  puts i.next
end

ic = ItemCollection.new arr

ic.each { |x| puts "item is #{x}" }
