require 'minitest/autorun'
require 'pairing_function'
require 'test/unit/assertions'
include Test::Unit::Assertions

class TestPairingFunction < Minitest::Test
  def test_pair_and_unpair
    100_000.times do
      input_x = rand(100_000)
      input_y = rand(100_000)

      encoded_value = PairingFunction.pair(input_x, input_y)
      output_x, output_y = PairingFunction.unpair(encoded_value)

      assert_equal([input_x, input_y], [output_x, output_y])
    end
  end

  def test_to_fail
    input_x = rand(100_000)
    input_y = rand(100_000)

    encoded_value = PairingFunction.pair(input_x, input_y)
    output_x, output_y = PairingFunction.unpair(encoded_value + 1)

    assert_not_equal([input_x, input_y], [output_x, output_y])
  end
end
