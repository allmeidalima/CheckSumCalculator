defmodule CheckDigitCalculatorTest do
  use ExUnit.Case

  describe "calculate_check_digit/2" do
    test "calculates check digits for CPF" do
      expected = "426240878-77"
      cpf = "426240878"

      check_digits = CheckDigitCalculator.calculate_check_digit(cpf, 2)

      result = "#{cpf}-#{Enum.join(check_digits)}"
      assert result == expected
    end

    test "calculates check digits (other example)" do
      expected = "426240807-83"
      cpf = "426240807"

      check_digits = CheckDigitCalculator.calculate_check_digit(cpf, 2)

      result = "#{cpf}-#{Enum.join(check_digits)}"
      assert result == expected
    end
  end
end
