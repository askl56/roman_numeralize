class Integer

  def roman_numeralize
    number = self
    roman_numeral_mapping.keys.each_with_object(String.new) do |divisor, memo|
      quotient, modulus = number.divmod(divisor)
      memo << roman_numeral_mapping[divisor] * quotient
      number = modulus
    end
  end

  private

  def roman_numeral_mapping
    {
      1000  => 'M',
      900   => 'CM',
      500   => 'D',
      400   => 'CD',
      100   => 'C',
      90    => 'XC',
      50    => 'L',
      40    => 'XL',
      10    => 'X',
      9     => 'IX',
      5     => 'V',
      4     => 'IV',
      1     => 'I'
    }.freeze
  end
end