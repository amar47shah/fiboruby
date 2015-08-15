class Fibonacci
  def initialize n
    @n = n
  end

  def value
    fail ArgumentError, 'index cannot be negative' if @n < 0
    return 1 if @n.zero?
    (1..@n).reduce([0,1]) do |(before_previous, previous), _|
      [previous, before_previous + previous]
    end.last
  end
end
