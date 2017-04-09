# a Node object has data and points to the next Node object in the LinkedList object
class Node
	# allows read/write access for the data and next node pointers of the Node
	# for instance, allows us to know pointer datas and change them
	attr_accessor :data, :next_node
	# initialises data and next node as 'nil'
	def initialize(data = nil, next_node = nil)
		@data = data
		@next_node = next_node
	end
end

# a LinkedList object contains Node objects
class LinkedList
	attr_reader :first_node, :last_node
	def initialize
		@first_node = nil
		@last_node = nil
	end

	def append(node)
		if @first_node == nil
			@first_node = node
		elsif @last_node == nil
			@last_node = node
			@first_node.next_node = node
		else
			# @last_node's next_node becomes new_node
			@last_node.next_node = node.data
			@last_node = node
			# @last_node becomes new_node
			#@last_node = new_node
		end
	end
=begin
	def prepend(node)

		if @first_node == nil
			@first_node = node
			@last_node = node
		else
			@first_node = node
		end
	end
=end
end

linked_list = LinkedList.new

node_one = linked_list.append("one")
node_two = linked_list.append("two")
node_three = linked_list.append("three")
node_four = linked_list.append("four")
node_five = linked_list.append("five")
node_six = linked_list.append("six")

puts "First node: " + node_one.inspect
puts
puts "First's next node: " + node_one.next_node.inspect
puts
puts "Firsts next next node: " + node_one.next_node.next_node.inspect
puts
"First's next next next node: " + node_one.next_node.next_node.next_node.inspect
puts
puts "Last node: " + linked_list.last_node.inspect
puts
puts "Third node: " + node_three.inspect
puts
puts "Second node: " + node_two.inspect
puts
puts "Fourth node: " + node_four.inspect
puts
puts "Fifth node: " + node_five.inspect
puts 
puts "Sixth node: " + node_six.inspect

=begin
0.1 version debugging

puts "First node: " + linked_list.first_node.inspect
puts
puts "Next node: " + linked_list.first_node.next_node.next_node.inspect
puts
puts "Next node: " + linked_list.first_node.next_node.next_node.next_node.inspect
puts
puts "Next node: " + linked_list.first_node.next_node.next_node.next_node.next_node.inspect
puts
puts "Last node: " + linked_list.last_node.inspect
puts
linked_list.prepend("Zero")
puts
puts "First node: " + linked_list.first_node.inspect

=end

=begin


		until pointer.next_node == nil
			pointer = pointer.next_node
			pointer.next_node = pointer.next_node
		end
		new_node = Node.new(node)
		pointer.next_node = new_node.data
		end
	end

	def prepend(node)
		node.next_node = @head
		@head = node
	end

	def size
		size = 0
		unless @head == nil
			pointer = @head
			size += 1
		end
		until pointer.next_node == nil
			pointer = pointer.next_node
			size +=1
		end
		return size
	end

	def head
		return @head
	end

	def tail
		pointer = @head
		until pointer.next_node.next_node == nil
			pointer = pointer.next_node
		end
		pointer.next_node = nil
	end

	def at_index(index)
		pointer = @head
		index times do
			pointer = pointer.next_node
		end
		return pointer
	end

	def pop
		pointer = @head
		until pointer.next_node.next_node == nil
			pointer = pointer.next_node
		end
		pointer.next_node = nil
	end

	def contains?(data)
		pointer = @head
		until pointer.next_node == nil
			if pointer = data
				return true
			end
			return false
		end
	end

	def find(data)
		pointer = @head
		index = 0
		until pointer.data == data
			if pointer.next_node != nil
				index += 1
			else
				return nil
			end
		end
		return index
	end

	def to_s
		pointer = @head
		string = ""
		until pointer.next_node == nil
			string = string + " ) -> ( " + pointer.data.to_s
		end
	end
end

linked_list = LinkedList.new

puts linked_list.data

=begin

	class Entry
		attr_accessor :next, :data
		def initialize(data)
			@next = nil
			@data = data
		end
	end

	class List
		attr_accessor :name
		def initialize
			@head = nil
			@tail = nil
		end
	end

=end