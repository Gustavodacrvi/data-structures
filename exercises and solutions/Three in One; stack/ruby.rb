# Describe how you could use a single array to implement three stacks. 





# solution 1:
=begin
  Works for any number of stacks.

  class MultipleStack
    attr_accessor :data, :arr

    class Data
      attr_accessor :last_el_position

      def initialize(number_of_stacks)
        @last_el_position = Array.new(number_of_stacks)
        @last_el_position.map! {|el| el = -1}
      end

      def update_pushed_elements(stack_index)
        # increase the value of all the elements in last_el_position that are equal to or comes after the stack_index.
        @last_el_position.map!.each_with_index {|el, i| i >= stack_index ? el += 1 : el }
      end

      def update_popped_elements(stack_index)
        # decrease the value of all the elements in last_el_position that are equal to or comes after the stack_index.
        @last_el_position.map!.each_with_index {|el, i| i >= stack_index ? el -= 1 : el }
      end
    end

    def initialize(number_of_stacks)
        if number_of_stacks < 1 then raise 'number_of_stacks cannot be less than 1' end
        @data = Data.new(number_of_stacks)
        @arr = []
    end

    def push(stack_index, element)
      @arr.insert(@data.last_el_position[stack_index] + 1, element)
      @data.update_pushed_elements(stack_index)
    end

    def peek(stack_index)
      return @arr[@data.last_el_position[stack_index]]
    end

    def pop(stack_index)
      return_var = peek(stack_index)
      @arr.delete_at(@data.last_el_position[stack_index])
      @data.update_popped_elements(stack_index)
      return return_var
    end

    def isEmpty(stack_index)
      if stack_index == 0 and @data.last_el_position[0] == -1
        return true
      elsif @data.last_el_position[stack_index] == @data.last_el_position[stack_index - 1]
        return true
      end
      return false 
    end
  end
=end
