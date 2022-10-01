defmodule Indigo.Form do
  alias Indigo.Species, as: Species
  alias Indigo.StatBlock, as: StatBlock
  alias Indigo.Learnset, as: Learnset

  @enforce_keys [:name, :species, :gen, :gratio, :learnsets, :base_stats, :evs, :height, :weight]
  @derive Jason.Encoder
  defstruct @enforce_keys ++ [deltas: []]

  @type t :: %__MODULE__{
          name: String.t(),
          species: Species,
          gen: integer(),
          gratio: float(),
          learnsets: [Learnset, ...],
          base_stats: StatBlock,
          evs: StatBlock,
          height: float(),
          weight: float(),
          deltas: [FormDelta, ...]
        }

  @spec list :: [t, ...]
  def list() do
    [
      %__MODULE__{
        name: "bulbasaur",
        species: Species.get(1),
        gen: 1,
        gratio: 7 / 1,
        learnsets: [],
        base_stats: %StatBlock{hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, spd: 45},
        evs: %StatBlock{hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, spd: 45},
        height: 0.7,
        weight: 6.9
      },
      %__MODULE__{
        name: "ivysaur",
        species: Species.get(2),
        gen: 1,
        gratio: 7 / 1,
        learnsets: [],
        base_stats: %StatBlock{hp: 60, atk: 62, def: 63, spatk: 80, spdef: 80, spd: 60},
        evs: %StatBlock{hp: 60, atk: 62, def: 63, spatk: 80, spdef: 80, spd: 60},
        height: 1.0,
        weight: 13.0
      }
    ]
  end

  @spec get(String.t()) :: nil | t
  def get(name) do
    case name do
      "bulbasaur" ->
        %__MODULE__{
          name: "bulbasaur",
          species: Species.get(1),
          gen: 1,
          gratio: 7 / 1,
          learnsets: [],
          base_stats: %StatBlock{hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, spd: 45},
          evs: %StatBlock{hp: 45, atk: 49, def: 49, spatk: 65, spdef: 65, spd: 45},
          height: 0.7,
          weight: 6.9
        }

      "ivysaur" ->
        %__MODULE__{
          name: "ivysaur",
          species: Species.get(2),
          gen: 1,
          gratio: 7 / 1,
          learnsets: [],
          base_stats: %StatBlock{hp: 60, atk: 62, def: 63, spatk: 80, spdef: 80, spd: 60},
          evs: %StatBlock{hp: 60, atk: 62, def: 63, spatk: 80, spdef: 80, spd: 60},
          height: 1.0,
          weight: 13.0
        }

      _ -> nil
    end
  end

  defimpl Indigo.Model do
    @spec id(Indigo.From.t()) :: String.t()
    def id(form) do
      form.name
    end
  end
end
