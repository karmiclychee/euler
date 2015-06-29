# The sum of the squares of the first ten natural numbers is:
# 1**2 + 2**2 + ... + 10**2 = 385
# The square of the sum of the first ten natural numbers is:
# (1 + 2 + ... + 10)**2 = 55**2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is:
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

module Euler
  class Six
    def initialize(limit)
      @set = (1..limit).to_a
    end

    def get_difference
      sum_squared - sum_squares
    end

    private

    def sum_squares
      @set.reduce { |agg, i| agg = agg + i**2 }
    end

    def sum_squared
      @set.reduce(:+)**2
    end

  end
end


puts Euler::Six.new(10).get_difference
puts 'expected: 2640'

puts Euler::Six.new(100).get_difference

