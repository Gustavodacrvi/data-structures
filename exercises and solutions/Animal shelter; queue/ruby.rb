#  An animal shelter, which holds only dogs and cats, operates on a strictly"first in, first out" basis. People must adopt either the "oldest" (based on arrival time) of all animals at the shelter, or they can select whether they would prefer a dog or a cat (and will receive the oldest animal of that type). They cannot select which specific animal they would like. Create the data structures to maintain this system and implement operations such as enqueue, dequeueAny, dequeueDog, and dequeueCat. You may use the built-in Linked list data structure.





# solution 1:
=begin
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

  class Animal
    attr_accessor :name, :age, :order
    def initialize(name, age)
      @name = name
      @age = age
      @order = nil
    end

    def setAnimalOrder(order)
      @order = order
      return self
    end

    def getAnimalOrder
      return @order
    end
  end

  class Cat < Animal
  end

  class Dog < Animal
  end

  class AnimalShelter
    attr_accessor :dogs, :cats, :order
    def initialize
      @dogs = Queue.new
      @cats = Queue.new
      @order = 0
    end

    def enqueue(animal)
      if animal.class.name == 'Dog'
        @dogs.add(animal.setAnimalOrder(@order))
      else
        @cats.add(animal.setAnimalOrder(@order))
      end
      @order += 1
    end

    def dequeueCat
      return @cats.remove
    end

    def dequeueDog
      return @dogs.remove
    end

    def dequeueAny
      if @cats.peek == nil and @dogs.peek != nil
        return @dogs.remove
      elsif @dogs.peek == nil and @cats.peek != nil
        return @cats.remove
      elsif @dogs.peek == nil and @cats.peek == nil
        return nil
      elsif @cats.peek.getAnimalOrder > @dogs.peek.getAnimalOrder
        return @dogs.remove
      end
      return @cats.remove
    end
  end
=end
