require './leatherman'

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

puts 13195
puts Euler::Leatherman.factor_primes(13195).join(', ')

puts 600851475143
puts Euler::Leatherman.factor_primes(600851475143).join(', ')