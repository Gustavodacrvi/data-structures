# Write a program to sort a stack such that the smallest items are on the top. You can use an additional temporary stack, but you may not copy the elements into any other data structure (such as an array). The stack supports the following operations: push, pop, peek, and is Empty. 


class Stack
  attr_accessor :arr
  def initialize
    @arr = []
  end

  def push(element)
    @arr.push(element)
  end

  def pop
    return @arr.pop
  end

  def peek
    return @arr[-1]
  end

  def isEmpty
    if @arr.length != 0
      return false
    end
    return true
  end
end

def sortStack(stack)
  

  return stack
end


# solution 1:
=begin
=end
