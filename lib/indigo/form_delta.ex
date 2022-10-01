defmodule Indigo.FormDelta do
  alias Indigo.Ability, as: Ability
  alias Indigo.StatBlock, as: StatBlock

  @derive Jason.Encoder
  defstruct [:base_stats, :evs, :base_xp, :base_friendship, :ability1, :ability2, :hidden_ability]

  @type t :: %__MODULE__{
          base_stats: StatBlock,
          evs: StatBlock,
          base_xp: integer(),
          base_friendship: integer(),
          ability1: Ability | nil,
          ability2: Ability | nil,
          hidden_ability: Ability | nil
        }

end
