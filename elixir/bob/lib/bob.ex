defmodule Bob do
  defp upcase?(str) do
    String.upcase(str) == str && String.downcase(str) != str
  end

  def hey(input) do
    trimmed = input |> String.trim()

    cond do
      trimmed == "" ->
        "Fine. Be that way!"

      String.ends_with?(trimmed, "?") && upcase?(trimmed) ->
        "Calm down, I know what I\'m doing!"

      String.ends_with?(trimmed, "?") ->
        "Sure."

      upcase?(trimmed) ->
        "Whoa, chill out!"

      true ->
        "Whatever."
    end
  end
end
