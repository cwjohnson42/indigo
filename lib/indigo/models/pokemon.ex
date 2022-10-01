defmodule Indigo.Pokemon do
  @moduledoc ~S"""
  A Pokemon is a single individual of a certain species.
  """

  alias Indigo.Nature, as: Nature
  alias Indigo.StatBlock, as: StatBlock
  alias Indigo.Form, as: Form

  @typedoc """
  A struct of the unique qualities of a given individual Pokemon
  """
  @enforce_keys [
    :id,
    :variant,
    :gen,
    :name,
    :level,
    :gender,
    :nature,
    :ability,
    :hidden_ability,
    :ivs,
    :evs,
    :moveset
  ]
  @derive Jason.Encoder
  defstruct @enforce_keys

  @type t :: %__MODULE__{
          id: String.t(),
          variant: Form,
          gen: integer(),
          name: String.t(),
          level: integer(),
          gender: Indigo.Gender,
          nature: Indigo.Nature,
          ability: Indigo.Ability,
          hidden_ability: Indigo.Ability,
          ivs: Indigo.StatBlock,
          evs: Indigo.StatBlock,
          moveset: Indigo.Moveset
        }

  @spec get(String.t()) :: __MODULE__.t() | nil
  def get(id) do
    case id do
      "1234" ->
        %__MODULE__{
          id: id,
          variant: Form.get("bulbasaur"),
          gen: 1,
          name: "bulbasaur",
          level: 20,
          gender: :male,
          nature: Nature.get("brave"),
          ability: nil,
          hidden_ability: nil,
          ivs: %StatBlock{hp: 10, atk: 10, def: 10, spatk: 10, spdef: 10, spd: 10},
          evs: %StatBlock{hp: 0, atk: 0, def: 0, spatk: 0, spdef: 0, spd: 0},
          moveset: []
        }

      "abcde" ->
        %__MODULE__{
          id: id,
          variant: Form.get("ivysaur"),
          gen: 2,
          name: "Joe DiMaggio",
          level: 31,
          gender: :female,
          nature: Nature.get("bashful"),
          ability: nil,
          hidden_ability: nil,
          ivs: %StatBlock{hp: 10, atk: 10, def: 10, spatk: 10, spdef: 10, spd: 10},
          evs: %StatBlock{hp: 3000, atk: 3000, def: 3000, spatk: 3000, spdef: 3000, spd: 3000},
          moveset: []
        }

      _ -> nil
    end
  end

  defimpl Indigo.Model do
    @spec id(Pokemon.t()) :: String.t()
    def id(pokemon) do
      pokemon.name
    end
  end
end
