class Node
	attr_accessor :next, :data
	def initialize(data)
		@data = data
		@next = nil
	end
end

class List
	attr_accessor :name
	def initialize
		@head = nil
		@tail = nil
	end

	def append(entry)
		if @head.nil?
			@head = entry
			@tail = entry
		else
			@tail.next = entry
			@tail = entry
		end
	end

	def prepend(entry)
		if @head.nil?
			@head = entry
			@tail = entry
		else
			entry.next = @head
			@head = entry
		end
	end

	def size
		location = @head
		size = 0
		until location.next.nil?
			location = location.next
			size += 1
		end
		puts "Size: #{size}"
	end
end

# TESTING

list = List.new

one = Node.new("one")
two = Node.new("two")
three = Node.new("three")
zero = Node.new("zero")

list.append(one)
list.append(two)
list.append(three)
list.prepend(zero)

puts "One: " + one.inspect
puts
puts "Two: " + two.inspect
puts
puts "Three: " + three.inspect
puts
puts "Zero: " + zero.inspect
puts
puts "Zero data: " + zero.data.inspect + "| next: " + zero.next.data.inspect
puts
puts "Size: " + list.size