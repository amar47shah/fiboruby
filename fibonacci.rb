class Fibonacci
  def initialize n
    fail ArgumentError, 'cannot be negative' if n < 0
    @n = n
  end

  def value
    return 1 if @n.zero?
    (1..@n).reduce([0, 1]) { |(pp, p), _| [p, pp + p] }.last
  end
end
