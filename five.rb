require './three' #prime factorization

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


class EulerFive
  def initialize(limit)
    factors = (2..limit).to_a

    @prime_factors     = factors.map { |i| Euler.factor_prime(i) }.flatten.uniq
    @nonprime_factors  = factors - @prime_factors
    @divisor = limit
  end

  def fightfightfight
    i = 1
    loop do
      break @divisor if divisible_by?(@prime_factors) && divisible_by?(@nonprime_factors)
      i += 1
      @divisor = 20 * i
    end
  end

  def divisible_by?(factors)
    r = factors.map { |f| @divisor % f }
    r.inject(:+) == 0
  end
end

puts "Factors: 2 - 10"
puts EulerFive.new(10).fightfightfight
puts "Expected: 2520\n"

puts "Factors: 2 - 20"
puts EulerFive.new(20).fightfightfight

