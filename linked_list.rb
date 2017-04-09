class Node
	attr_accessor :next, :data
	def initialize(data)
		@data = data
		@next = nil
	end
end

class List
	attr_accessor :name, :head, :tail
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
		if @head.nil?
			size = 0
		else
			location = @head
			size = 1
			until location.next.nil?
				location = location.next
				size += 1
			end
		end
		size
	end

	def at(index)
		if @head.nil?
			location = nil
		else
			location = @head
			counter  = 0
			until counter == index
				location = location.next
				counter += 1
			end
		end
		location
	end

	def pop
		location = @head
		until location.next == @tail
			location = location.next
		end
		@tail = location
		@tail.next = nil
	end

	def contains?(value)
		location = @head
		until location.next.nil?
			location = location.next
			return true if location == value
		end
		false
	end

	def find(data)
		if @head.nil?
			index = nil
		else
			index = 0
			location = @head
			until location.next.nil?
				if location.data == data
					return index
				end
				location = location.next
				index += 1
			end
		end
		index = nil
		index
	end

	# ( data ) -> ( data ) -> ( data ) -> nil
	def to_s
		location = @head
		until location.nil?
			print "( " + location.data.inspect + " ) -> "
			location = location.next
		end
		print "nil"
	end

end

=begin

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
puts "Size: " + list.size.to_s
puts
puts "Head: [Data: #{list.head.data.inspect}]-[Next: #{list.head.next.data.inspect}]"
puts
puts "Tail: [Data: #{list.tail.data.inspect}]-[Next: #{list.tail.next.inspect}]"
puts
puts "POP!"
puts
puts "Tail: [Data: #{list.tail.data.inspect}]-[Next: #{list.tail.next.inspect}]"
puts
three = Node.new("three")
list.append(three)
puts "Tail: [Data: #{list.tail.data.inspect}]-[Next: #{list.tail.next.inspect}]"
puts
puts "Index 2: " + list.at(2).data.to_s
index_test = List.new
puts
puts "Error test: Index 5 of empty list: " + index_test.at(5).inspect
puts
list.pop
puts "List contains 'two': " + list.contains?(two).to_s
puts
eightyeight = true
puts "List contains 'eightyeight': " + list.contains?(eightyeight).to_s
puts
puts "Find 'zero': index is " + list.find("zero").inspect
puts
puts "Find 'two': index is " + list.find("two").inspect
puts
puts "Error test: Find 'eighteen': index is " + list.find("eighteen").inspect
puts
puts list.to_s

=end