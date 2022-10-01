defmodule Indigo.Species do
  alias Indigo.Growth, as: Growth

  @enforce_keys [:number, :name, :growth_rate]
  @derive Jason.Encoder
  defstruct [:number, :name, :growth_rate]

  @type t :: %__MODULE__{
          number: integer,
          name: String.t(),
          growth_rate: Growth.growth()
        }

  @spec list :: [t, ...]
  def list() do
    [
      %__MODULE__{number: 1, name: "bulbasaur", growth_rate: :medium_slow},
      %__MODULE__{number: 2, name: "ivysaur", growth_rate: :medium_slow}
    ]
  end

  @spec get(integer) :: nil | t
  def get(number) do
    case number do
      1 -> %__MODULE__{number: 1, name: "bulbasaur", growth_rate: :medium_slow}
      2 -> %__MODULE__{number: 2, name: "ivysaur", growth_rate: :medium_slow}
      _ -> nil
    end
  end

  defimpl Indigo.Model do
    @spec id(Indigo.Species.t()) :: String.t()
    def id(species) do
      species.number
    end
  end
end
