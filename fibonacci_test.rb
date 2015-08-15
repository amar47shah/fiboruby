#!/usr/bin/env ruby
gem 'minitest'
require 'minitest/autorun'
require_relative 'fibonacci'

class FibonacciTest < Minitest::Test
  def test_fib_0
    assert_fib 1, 0
  end

  def test_fib_1
    assert_fib 1, 1
  end

  def test_fib_2
    assert_fib 2, 2
  end

  def test_fib_3
    assert_fib 3, 3
  end

  def test_fib_4
    assert_fib 5, 4
  end

  def test_fib_5
    assert_fib 8, 5
  end

  def test_fib_40
    assert_fib 165580141, 40
  end

  def test_fib_50
    assert_fib 20365011074, 50
  end

  def test_negative
    assert_raises(ArgumentError) { Fibonacci.new(-5) }
  end

private

  def assert_fib value, n
    assert_equal value, Fibonacci.new(n).value
  end
end
