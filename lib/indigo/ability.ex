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
      %Ability{name: "adaptability", gen: 4, effect: fn -> nil end},
      %Ability{name: "aerilate", gen: 6, effect: fn -> nil end},
      %Ability{name: "aftermath", gen: 4, effect: fn -> nil end}
    ]
  end

  @spec get(String.t()) :: t | nil
  def get(name) do
    case name do
      "adaptability" -> %Ability{name: "adaptability", gen: 4, effect: fn -> nil end}
      "aerilate" -> %Ability{name: "aerilate", gen: 6, effect: fn -> nil end}
      "aftermath" -> %Ability{name: "aftermath", gen: 4, effect: fn -> nil end}
      _ -> nil
    end
  end
end
