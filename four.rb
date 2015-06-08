# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

module Euler
  class Palindrome
    attr_reader :result

    def initialize(digits)
      values = ((10**(digits-2))..(10**digits-1)).to_a
      @result = 0
      find(values)
    end

    private

    def find(set)
      return if set.empty?
      set.each do |v|
        product = v * set.last
        @result = product if product > @result && ("#{product}" == "#{product}".reverse)
        break if v == set.last
      end

      set.pop
      find(set)
    end

  end
end

p Euler::Palindrome.new(2).result
p Euler::Palindrome.new(3).result