defmodule Indigo.Growth do
  @typedoc """
  Levelling rate of a Pokémon species
  """
  @type growth :: :erratic | :fast | :fluctuating | :medium_fast | :medium_slow | :slow

  @spec list :: [growth,...]
  def list do
    [
      :erratic,
      :fast,
      :fluctuating,
      :medium_fast,
      :medium_slow
    ]
  end

  @spec max_xp(growth) :: integer
  def max_xp(growth) do
    case growth do
      :erratic -> 600_000
      :fast -> 800_000
      :fluctuating -> 1_640_000
      :medium_fast -> 1_000_000
      :medium_slow -> 1_059_860
      :slow -> 1_250_000
    end
  end
end
