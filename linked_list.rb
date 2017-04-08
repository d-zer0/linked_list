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
		@first_node = Node.new
		@last_node = @first_node
	end

	def append(data)
		new_node = Node.new(data)
		if @first_node.data == nil
			@first_node.data = new_node
			@first_node.next_node = new_node
			@last_node = new_node
		else
			# @last_node's next_node becomes new_node
			@last_node.next_node = new_node
			@last_node = new_node
			# @last_node becomes new_node
			#@last_node = new_node
		end
	end

end

linked_list = LinkedList.new
linked_list.append("One")
linked_list.append("Two")
linked_list.append("Three")
linked_list.append("Four")
linked_list.append("Five")
linked_list.append("Six")
puts "First node: " + linked_list.first_node.inspect
puts
puts "Next node: " + linked_list.first_node.next_node.next_node.inspect
puts
puts "Next node: " + linked_list.first_node.next_node.next_node.next_node.inspect
puts
puts "Next node: " + linked_list.first_node.next_node.next_node.next_node.next_node.inspect
puts
puts "Last node: " + linked_list.last_node.inspect

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