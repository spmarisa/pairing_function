class PairingFunction
  def self.pair(x, y)
    (((x + y)**2) + (3 * x) + y) / 2
  end

  def self.unpair(z)
    c = (((Math.sqrt((8 * z) + 1)) - 1) / 2).floor
    x = z - ((c * (c + 1)) / 2)
    y = (c * (c + 3) / 2) - z

    return x, y
  end
end
