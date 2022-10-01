defmodule Indigo.Moveset do
  @moduledoc ~S"""
  """

  alias Indigo.Move, as: Move

  @typedoc """
  A set of up to 4 moves that a pokemon knows
  """
  @derive Jason.Encoder
  # TODO: Enforce move1
  defstruct [:move1, :move2, :move3, :move4]

  @type t :: %__MODULE__{
          move1: Move | nil,
          move2: Move | nil,
          move3: Move | nil,
          move4: Move | nil
        }
end
