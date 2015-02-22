defmodule Message do
  import String

  def empty?(msg), do: strip(msg) ==  ""
  def question?(msg), do: last(msg) == "?"
  def shouting?(msg), do: upcase(msg) == msg and downcase(msg) != msg
end

defmodule Teenager do
  import Message

  def hey(msg) do
    cond do
      empty? msg -> "Fine. Be that way!"
      question? msg -> "Sure."
      shouting? msg -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
