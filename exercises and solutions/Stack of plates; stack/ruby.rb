# Imagine a (literal) stack of plates. If the stack gets too high, it might topple. Therefore, in real life, we would likely start a new stack when the previous stack exceeds some threshold. Implement a data structure SetOfStacks that mimics this. SetOfStacks should be composed of several stacks and should create a new stack once the previous one exceeds capacity. SetOfStacks.push() and SetOfStacks.pop() should behave identically to a single stack (that is, pop () should return the same values as it would if there were just a single stack). FOLLOW UP Implement a function popAt ( int index) which performs a pop operation on a specific sub-stack





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

  class SetOfStacks
    attr_accessor :stacks, :max, :current_stack
    def initialize(max_stack_size)
      @max = max_stack_size
      @stacks = [Stack.new]
      @current_stack = 0
    end

    def push(element)
      @stacks[@current_stack].push(element)
      if @max == @stacks[@current_stack].arr.length
        @current_stack += 1
        @stacks.push(Stack.new)
      end
    end

    def peek
      if @stacks[@current_stack].isEmpty
        return @stacks[@current_stack - 1].peek
      end
      return @stacks[@current_stack].peek
    end

    def pop
      if @stacks[@current_stack].isEmpty and @current_stack != 0
        @stacks.pop
        @current_stack -= 1      
      end
      popped = @stacks[@current_stack].pop
      return popped
    end

    def isEmpty
      if !@stacks[0].isEmpty
        return false
      end
      return true
    end
    
    def popAt(stack_index)
      return @stacks[stack_index].pop
    end
  end
=end
