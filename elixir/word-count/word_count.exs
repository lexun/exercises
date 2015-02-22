defmodule Words do
  import String

  @invalid_symbols ~r/[^\p{L}\d'-]/u
  @whitespace ~r/[\s_]+/

  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence |> downcase |> words |> summary
  end

  @spec words(String.t) :: [String.t]
  defp words(string) do
    string
      |> replace(@invalid_symbols, " ") |> strip
      |> split(@whitespace)
  end

  @spec summary([String.t]) :: map
  defp summary(word_list) do
    Enum.reduce(word_list, %{}, &update/2)
  end

  @spec update(String.t, map) :: map
  defp update(word, counts) do
    Map.update(counts, word, 1, &(&1 + 1))
  end
end
