require 'test_helper'

class TestFibonacciSequence < Minitest::Test

  def test_that_constructor_requires_a_positive_integer
    assert_raises "Invalid maximum" do
      @fibonacci_sequence = FibonacciSequence.new(maximum: -1)
    end

    assert_raises "Invalid maximum" do
      @fibonacci_sequence = FibonacciSequence.new(maximum: 0)
    end

    assert_raises "Invalid maximum" do
      @fibonacci_sequence = FibonacciSequence.new(maximum: nil)
    end

    assert_raises "Invalid maximum" do
      @fibonacci_sequence = FibonacciSequence.new(maximum: 0.1)
    end
  end

  def test_that_maximum_is_enforced
    @fibonacci_sequence = FibonacciSequence.new(maximum: 1)

    assert_equal [1], @fibonacci_sequence.numbers

    @fibonacci_sequence = FibonacciSequence.new(maximum: 2)

    assert_equal [1, 2], @fibonacci_sequence.numbers

    @fibonacci_sequence = FibonacciSequence.new(maximum: 10)

    assert_equal [1, 2, 3, 5, 8], @fibonacci_sequence.numbers

    @fibonacci_sequence = FibonacciSequence.new(maximum: 21)

    assert_equal [1, 2, 3, 5, 8, 13, 21], @fibonacci_sequence.numbers
  end

  def test_that_default_maximum_is_4_000_000
    @fibonacci_sequence = FibonacciSequence.new()

    assert_equal 3524578, @fibonacci_sequence.numbers.last
  end

  def test_that_sum_inludes_all_numbers_by_default
    @fibonacci_sequence = FibonacciSequence.new(maximum: 100)

    # [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    assert_equal 231, @fibonacci_sequence.sum
  end

  def test_that_sum_can_include_only_even_numbers
    @fibonacci_sequence = FibonacciSequence.new(maximum: 100)

    # [2, 8, 34]
    assert_equal 44, @fibonacci_sequence.sum(parity: 'even')
  end

  def test_that_sum_can_include_only_odd_numbers
    @fibonacci_sequence = FibonacciSequence.new(maximum: 100)

    # [1, 3, 5, 13, 21, 55, 89]
    assert_equal 187, @fibonacci_sequence.sum(parity: 'odd')
  end
end
