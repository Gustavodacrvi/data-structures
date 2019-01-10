# Implement a MyQueue class which implements a queue using two stacks. 





# solution 1:
=begin
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

  class MyQueue
    attr_accessor :stack1, :stack2, :reversed
    def initialize
      @stack1 = Stack.new
      @stack2 = Stack.new
      @reversed = false
    end

    def _reverse
      while !@stack1.isEmpty
        @stack2.push(@stack1.pop)
      end
      @reversed = true
    end

    def _unreverse
      while !@stack2.isEmpty
        @stack1.push(@stack2.pop)
      end
      @reversed = false
    end

    def add(element)
      if @reversed then _unreverse end
      stack1.push(element)
    end

    def remove
      if !@reversed then _reverse end
      return @stack2.pop
    end

    def peek
      if !@reversed then _reverse end
        return @stack2.peek
    end

    def isEmpty
      if @reversed and @stack2.isEmpty
        return true
      elsif !@reversed and @stack1.isEmpty
        return true
      end
      return false
    end
  end
=end
