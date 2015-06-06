# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

module Euler
  extend Math

  module_function
  def factor_prime(n)
    case
    when n.even?
      return [2] if n == 2
      [2] + factor_prime(n/2)
    when n.odd?
      i = 3
      while i <= n do
        return [n] if i == n
        return([i] + factor_prime(n/i)) if (n % i).zero?
        i += 1
      end
    end
  end
end

puts 13195
puts Euler.factor_prime(13195).join(', ')

puts 600851475143
puts Euler.factor_prime(600851475143).join(', ')