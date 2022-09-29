defmodule Indigo.Species do
  alias Indigo.Species, as: Species
  alias Indigo.Growth, as: Growth

  @enforce_keys [:number, :name, :growth_rate]
  @derive Jason.Encoder
  defstruct [:number, :name, :growth_rate]

  @type t :: %__MODULE__{
          number: integer,
          name: String.t(),
          growth_rate: Growth.growth
        }

  @spec list :: [t, ...]
  def list() do
    [
      %Species{number: 1, name: "bulbasaur", growth_rate: :medium_slow},
      %Species{number: 2, name: "ivysaur", growth_rate: :medium_slow},
    ]
  end

  @spec get(integer) :: nil | t
  def get(number) do
    case number do
      "bulbasaur" -> %Species{number: 1, name: "bulbasaur", growth_rate: :medium_slow}
      "ivysaur" -> %Species{number: 2, name: "ivysaur", growth_rate: :medium_slow}
      _ -> nil
    end
  end
end
