# How would you design a stack which, in addition to push and pop, has a function min which returns the minimum element? Push, pop and min should all operate in 0(1) time.





# solution 1:
=begin
  class Stack
    attr_accessor :arr
    def initialize()
      @arr = []
    end
    
    def push(element)
      @arr.push(element)
    end

    def pop()
      return @arr.pop
    end

    def peek()
      return @arr[-1]
    end

    def isEmpty()
      if @arr.length != 0
        return false
      end
      return true
    end
  end

  class MinStack < Stack
    attr_accessor :arr, :mins
    def initialize()
      @arr = []
      @mins = Stack.new()
    end
    
    def push(element)
      if @mins.isEmpty
        @mins.push(element)
      elsif min > element
        @mins.push(element)
      end
      @arr.push(element)
    end

    def pop()
      popped = @arr.pop
      if popped == @mins.peek
        @mins.pop
      end
      return popped
    end

    def min()
      return @mins.peek()
    end
  end
=end
