class Stack
  attr_accessor :arr
  def initialize()
    @arr = []
  end
  
  def push(element)
    @arr.push(element)
  end

  def pop()
    return @arr.pop()
  end

  def peek()
    return @arr[@arr.length - 1]
  end

  def isEmpty()
    if @arr.lenght != 0
      return false
    end
    return true
  end

end
