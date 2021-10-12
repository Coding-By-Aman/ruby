module Enumerable
  def my_each
    yield self
  end

  def my_each_with_index
    iterator = 0
    for el in self
      yield el, iterator
      iterator += 1
    end
  end

  def my_select
    result = self.is_a?(Hash) ? {} : []
    for el in self
      if yield el
        self.is_a?(Hash) ? result.store(el[0], el[1]) : result << el
      end
    end
    result
  end
end

#
# puts "my_each vs. each"
# numbers = [1, 2, 3, 4, 5]
# puts "my_each"
# numbers.my_each  { |item| puts item }
# puts "each"
# numbers.each  { |item| puts item }
#
# puts "my_each_with_index vs. each_with_index"
# numbers = [1, 2, 3, 4, 5]
# puts "my_each_with_index"
# numbers.my_each_with_index { |item, index| puts "#{index} : #{item}"}
# puts "each_with_index"
# numbers.each_with_index  { |item, index| puts "#{index} : #{item}"}

puts "my_select vs. select"
numbers = [1, 2, 3, 4, 5]
puts "my_select"
puts numbers.my_select { |item| item % 2 == 0 }
puts "select"
puts numbers.select { |item| item % 2 == 0 }
