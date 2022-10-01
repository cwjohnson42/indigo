defmodule Indigo.StatBlock do
  @moduledoc ~S"""
  Stat blocks represent a single block of all 6 stats
  """

  @typedoc """
  A struct containing the 6 stats
  """
  @derive Jason.Encoder
  defstruct Indigo.Stat.list()

  @type t :: %__MODULE__{
          hp: integer | nil,
          atk: integer | nil,
          def: integer | nil,
          spatk: integer | nil,
          spdef: integer | nil,
          spd: integer | nil
        }
end
