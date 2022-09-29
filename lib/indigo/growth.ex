defmodule Indigo.Growth do
  @typedoc """
  Levelling rate of a Pokémon species
  """
  @type growth :: :erratic | :fast | :fluctuating | :medium_fast | :medium_slow | :slow

  @spec list :: growth
  def list do
    [
      :erratic,
      :fast,
      :fluctuating,
      :medium_fast,
      :medium_slow
    ]
  end

  # @spec max_xp(growth) :: integer
  def max_hp(growth) do
    case growth do
      :erratic -> 600000
      :fast -> 800000
      :fluctuating -> 1640000
      :medium_fast -> 1000000
      :medium_slow -> 1059860
      :slow -> 1250000
    end
  end
end
