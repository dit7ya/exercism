defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """

  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    thousands = %{0 => nil, 1 => "M", 2 => "MM", 3 => "MMM"}

    hundreds = %{
      0 => nil,
      1 => "C",
      2 => "CC",
      3 => "CCC",
      4 => "CD",
      5 => "D",
      6 => "DC",
      7 => "DCC",
      8 => "DCCC",
      9 => "CM"
    }

    tens = %{
      0 => nil,
      1 => "X",
      2 => "XX",
      3 => "XXX",
      4 => "XL",
      5 => "L",
      6 => "LX",
      7 => "LXX",
      8 => "LXXX",
      9 => "XC"
    }

    units = %{
      0 => nil,
      1 => "I",
      2 => "II",
      3 => "III",
      4 => "IV",
      5 => "V",
      6 => "VI",
      7 => "VII",
      8 => "VIII",
      9 => "IX"
    }

    codes = %{-1 => units, -2 => tens, -3 => hundreds, -4 => thousands}

    digits = Integer.digits(number)

    num_digits = length(digits)

    digits
    |> Enum.with_index()
    |> Enum.map(fn {digit, place} -> codes[place - num_digits][digit] end)
    |> Enum.join("")
  end
end
