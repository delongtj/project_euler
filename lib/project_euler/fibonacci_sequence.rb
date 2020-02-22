class FibonacciSequence

  # Note: Performance of recursion breaks down quickly, so storing the sequence as a read-only Array is more efficient at scale
  attr_reader :numbers

  def initialize(opts = { maximum: 4_000_000 })
    maximum = opts[:maximum].to_i

    raise "Invalid maximum" if maximum <= 0

    # Sequence required to start at 1 per specifications - https://projecteuler.net/problem=2
    @numbers = [ 1 ]

    i = 2

    while i <= maximum
      @numbers << i

      i = @numbers[ @numbers.size - 1 ] + @numbers[ @numbers.size - 2 ]
    end
  end

  def sum(opts = { })
    if opts[:parity].to_s == 'odd'
      @numbers.select { |n| n % 2 != 0 }.sum
    elsif opts[:parity].to_s == 'even'
      @numbers.select { |n| n % 2 == 0 }.sum
    else
      @numbers.sum
    end
  end

  # Other methods to perform on the sequence could be added here
end
