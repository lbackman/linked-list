# lib/main.rb

require_relative 'linked_list'
require_relative 'node'

link = LinkedList.new

link.append(0)
link.prepend(1)
link.prepend(2)
link.append(3)

puts link
puts "Size: #{link.size}"

link.pop
link.shift

puts link
puts "Size: #{link.size}"

puts "First element: #{link.at(0)}"

link.insert_at(1, 10)
link.insert_at(1, 20)
link.insert_at(-1, 30)
link.insert_at(-3, 50)

puts link
