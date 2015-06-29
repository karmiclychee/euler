module Euler
  module Leatherman
    extend Math

    module_function

    def factor_primes(n)
      case
      when n.even?
        return [2] if n == 2
        [2] + factor_primes(n/2)
      when n.odd?
        i = 3
        while i <= n do
          return [n] if i == n
          return([i] + factor_primes(n/i)) if (n % i).zero?
          i += 1
        end
      end
    end
  end
end