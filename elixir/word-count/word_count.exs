defmodule Words do
  @invalid_symbols ~r/[^\p{L}\d'-]/u

  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    String.downcase(sentence) |> words |> group_by_count
  end

  defp words(sentence) do
    String.split sentence, @invalid_symbols, trim: true
  end

  defp group_by_count(words) do
    Enum.reduce words, %{}, &increment_count/2
  end

  defp increment_count(word, counts) do
    Map.update counts, word, 1, &(&1 + 1)
  end
end
