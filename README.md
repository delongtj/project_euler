# Project Euler - Fibonacci Sequence Generator

Contains a class to generate and sum the Fibonacci Sequence defined by 1, 2, 3, 5, 8, 13...

https://projecteuler.net/problem=2

## Install
Requires Ruby 2.6.3 and bundler

```
bundle install
```

To run tests

```
rake test
```

## Usage

```
require 'fibonacci_sequence'

@fibonacci_sequence = FibonacciSequence.new(maximum: 4_000_000)

@fibonacci_squenece.sum(parity: 'even')

=> 9227463
```
