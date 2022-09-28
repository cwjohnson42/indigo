defmodule Indigo.Stat do
  @type stat :: :hp | :atk | :def | :spatk | :spdef | :spd

  @spec list :: [stat, ...]
  def list() do
    [
      :hp,
      :atk,
      :def,
      :spatk,
      :spdef,
      :spd
    ]
  end

  @spec to_string(stat) :: String.t()
  def to_string(stat) do
    case stat do
      :hp -> "hp"
      :atk -> "atk"
      :def -> "def"
      :spatk -> "spatk"
      :spdef -> "spdef"
      :spd -> "spd"
    end
  end
end
