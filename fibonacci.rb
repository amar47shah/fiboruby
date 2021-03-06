class Fibonacci
  def initialize n
    fail ArgumentError, 'cannot be negative' if n < 0
    @n = n
  end

  def value
    @n.times.reduce([0, 1]) { |(pp, p), _| [p, pp + p] }.last
  end
end
