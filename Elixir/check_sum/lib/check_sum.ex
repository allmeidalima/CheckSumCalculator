defmodule CheckDigitCalculator do
  @moduledoc """
    This is the elxiir module 
    that implements the algorithm to calculate 
    the check digit of the Individual Taxpayer Registry(CPF)
    used by Brazilian registration agencies.
  """
  @moduledoc since: "1.0.0"
  def calculate_check_digit(number, digits \\ 1) do
    digit_list = String.graphemes(number)
    build_check_digits(digit_list, digits, [])
  end

  # this function will be called when digits is equal to zero 
  defp build_check_digits(_, 0, check_digits) do
    check_digits
  end

  defp build_check_digits(digit_list, remaining_digits, check_digits) do
    {total, _} =
      Enum.reduce(digit_list, {0, 2}, fn digit, {acc, weight} ->
        {acc + String.to_integer(digit) * weight, weight + 1}
      end)

    check_digit = 11 - rem(total, 11)

    build_check_digits(
      ["#{check_digit}" | digit_list],
      remaining_digits - 1,
      [check_digit | check_digits]
    )
  end
end

# it was moved to check_sum_test.exs
# cpf = "426240878"
# cpf_check_digits = CheckDigitCalculator.calculate_check_digit(cpf, 2)
# IO.puts("#{cpf}-#{Enum.join(cpf_check_digits)}")
