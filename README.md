## Pairing Function

In mathematics, a pairing function is a process to uniquely encode two natural numbers into a single natural number.

This is a ruby implementation of the that provides two functions, `pair` and `unpair`.

## Explanation

To encode a pair, we use

    f(a, b) = [(a + b)^2 + 3a + b]/2

To decode this, we use

    c = int[[sqrt(8N + 1) - 1]/2]
    a = N - c(c + 1)/2
    b = c(c + 3)/2 - N

## Installation

``` ruby
gem 'pairing_function', '~> 0.0.8'
```

``` ruby
input_x = rand(100_000)
input_y = rand(100_000)

encoded_value = PairingFunction.pair(input_x, input_y)

PairingFunction.unpair(encoded_value)
```

## Limitations

Negative integers are not supported


# License

Copyright (c) 2013 Phaneendra Marisa Licensed under the WTFPL license.
