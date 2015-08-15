#!/usr/bin/env ruby
gem 'minitest'
require 'minitest/autorun'
require_relative 'fibonacci'

class FibonacciTest < Minitest::Test
  def test_fib_0
    assert_equal 1, Fibonacci.new(0).fib
  end

  def test_fib_1
    assert_equal 1, Fibonacci.new(1).fib
  end

  def test_fib_2
    assert_equal 2, Fibonacci.new(2).fib
  end

  def test_fib_3
    assert_equal 3, Fibonacci.new(3).fib
  end

  def test_fib_4
    assert_equal 5, Fibonacci.new(4).fib
  end

  def test_fib_5
    assert_equal 8, Fibonacci.new(5).fib
  end

  def test_fib_40
    assert_equal 165580141, Fibonacci.new(40).fib
  end

  def test_fib_50
    assert_equal 20365011074, Fibonacci.new(50).fib
  end

  def test_negative
    assert_raises(ArgumentError) { Fibonacci.new(-5).fib }
  end
end
