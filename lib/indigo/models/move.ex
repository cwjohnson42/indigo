defmodule Indigo.Move do
  @enforce_keys [:name, :type, :dmg_type, :target, :contact, :effects]
  @derive Jason.Encoder
  defstruct @enforce_keys

  @type t :: %__MODULE__{
          name: String.t(),
          type: Indigo.Type.t(),
          dmg_type: Indigo.Move.dmg_type(),
          target: Indigo.Move.target(),
          contact: boolean(),
          effects: []
        }

  @type target ::
          :all
          | :usr_allies
          | :allies
          | :foes

          # Adjacent groups
          | :adj_all
          | :adj_foes
          | :adj_allies

          # Single target
          | :any_other
          | :ally
          | :foe
          | :user
          | :adj
          | :adj_ally
          | :adj_foe
          | :user_adj_ally

  @type dmg_type :: :physical | :special

  defimpl Indigo.Model do
    @spec id(Indigo.Move.t()) :: String.t()
    def id(move) do
      move.name
    end
  end
end
