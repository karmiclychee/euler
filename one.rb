# Find the sum of all the multiples of 3 or 5 below 1000.

puts((0...1000).reduce do |agg, number|
  if ((number % 3).zero? || (number % 5).zero?)
    agg += number
  end
  agg
end)