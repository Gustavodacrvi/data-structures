class Queue
  attr_accessor :arr
  def initialize
    @arr = []
  end

  def add(element)
    @arr.push(element)
  end

  def remove
    return @arr.shift
  end

  def peek
    return @arr[0]
  end

  def isEmpty
    if @arr.length != 0
      return false
    end
    return true
  end
end
