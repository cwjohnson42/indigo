defmodule Indigo.Ability do
  alias Indigo.Ability, as: Ability

  @enforce_keys [:name, :gen, :effect]
  @derive {Jason.Encoder, only: [:name, :gen]}
  defstruct [:name, :gen, :effect]

  @type t :: %__MODULE__{
          name: String.t(),
          gen: integer,
          effect: fun
        }

  @spec list() :: [t, ...]
  def list() do
    [
      %__MODULE__{name: "adaptability", gen: 4, effect: fn -> nil end},
      %__MODULE__{name: "aerilate", gen: 6, effect: fn -> nil end},
      %__MODULE__{name: "aftermath", gen: 4, effect: fn -> nil end}
    ]
  end

  @spec get(String.t()) :: t | nil
  def get(name) do
    case name do
      "adaptability" -> %__MODULE__{name: "adaptability", gen: 4, effect: fn -> nil end}
      "aerilate" -> %__MODULE__{name: "aerilate", gen: 6, effect: fn -> nil end}
      "aftermath" -> %__MODULE__{name: "aftermath", gen: 4, effect: fn -> nil end}
      _ -> nil
    end
  end

  defimpl Indigo.Model do
    @spec id(Ability.t()) :: String.t()
    def id(ability) do
      ability.name
    end
  end
end
