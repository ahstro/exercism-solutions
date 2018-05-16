defmodule SecretHandshake do
  use Bitwise

  @actions [
    { 0b1,    "wink" },
    { 0b10,   "double blink" },
    { 0b100,  "close your eyes" },
    { 0b1000, "jump" },
  ]

  @reverse_bit 0b10000

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    actions = @actions |> reverse_if(has_bit(code, @reverse_bit))
    for { bit, action } <- actions, has_bit(code, bit), do: action
  end

  @spec has_bit(code :: integer, bit :: integer) :: boolean
  defp has_bit(code, bit), do: (bit &&& code) > 0

  @spec reverse_if(list :: list(), should_reverse :: boolean) :: list()
  defp reverse_if(list, should_reverse) do
    if should_reverse, do: Enum.reverse(list), else: list
  end
end

