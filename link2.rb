class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
  
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
    else
    print "nil\n"
    return
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
        @data = LinkedListNode.new(value, @data)
        "stack"
    end

    def pop
        if @data.nil?
            return nil
        else
          top_value = @data.value
            @data = @data.next_node
            return top_value
        end
    end

end

def reverse_list(stack_original, previous=nil)
  #create a second stack
  #iterate over the first stack til empty - pop from 1st stack and push to second stack
  #return the second stack
  stack_reverse = Stack.new
  
  while stack_original.data
    stack_reverse.push(stack_original.pop)
  end
  return stack_reverse
end
stack = Stack.new

stack.push(12)
stack.push(99)
stack.push(37)
print_values(stack.data)
stack_reversed = reverse_list(stack)
print_values(stack_reversed.data)












