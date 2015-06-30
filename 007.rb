# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

module Euler
  class Seven

    def initialize(position)
      @position = position
    end

    def probe
      probe_index = @position - 1
      primes = []
      i = 1

      until primes[probe_index]
        primes = sieve_of_eratosthenes((2..10**i).to_a).compact
        i += 1
      end

      primes[probe_index]
    end

    private

    def sieve_of_eratosthenes(list)
      list.each_with_index do |candidate_prime, index|
        next unless candidate_prime

        null_index = index + candidate_prime
        while null_index <= (list.length - 1)
          list[null_index] = nil
          null_index += candidate_prime
        end

      end
    end

  end
end


puts Euler::Seven.new(6).probe
puts 'Expected: 13'
puts Euler::Seven.new(10_001).probe
