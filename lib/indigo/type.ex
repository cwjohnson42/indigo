defmodule Indigo.Type do
  @typedoc """
  Pokemon/move type
  """
  @type type ::
          :bug
          | :dark
          | :dragon
          | :electric
          | :fairy
          | :fighting
          | :fire
          | :flying
          | :ghost
          | :grass
          | :ground
          | :ice
          | :normal
          | :poison
          | :psychic
          | :rock
          | :steel
          | :water

  @spec list :: [type, ...]
  def list do
    [
      :bug,
      :dark,
      :dragon,
      :electric,
      :fairy,
      :fighting,
      :fire,
      :flying,
      :ghost,
      :grass,
      :ground,
      :ice,
      :normal,
      :poison,
      :psychic,
      :rock,
      :steel,
      :water
    ]
  end

  @spec dmg_mult(type, any, integer) :: nil | float
  def dmg_mult(type_atk, type_def, gen \\ 6) do
    if not exists?(type_atk, gen) or not exists?(type_def, gen) do
      nil
    else
      case type_atk do
        :bug ->
          case type_def do
            :dark -> 2.0
            :fairy -> 0.5
            :fighting -> 0.5
            :fire -> 0.5
            :flying -> 0.5
            :ghost -> 0.5
            :grass -> 2.0
            :poison when gen >= 2 -> 0.5
            :poison -> 2.0
            :psychic -> 2.0
            :steel -> 0.5
            _ -> 1.0
          end

        :dark ->
          case type_def do
            :dark -> 0.5
            :fairy -> 0.5
            :fighting -> 0.5
            :ghost -> 2.0
            :psychic -> 2.0
            :steel when gen <= 5 -> 0.5
            _ -> 1.0
          end

        :dragon ->
          case type_def do
            :dragon -> 2.0
            :fairy -> 0.0
            :steel -> 0.5
            _ -> 1.0
          end

        :electric ->
          case type_def do
            :dragon -> 0.5
            :electric -> 0.5
            :flying -> 2.0
            :grass -> 0.5
            :ground -> 0.0
            :water -> 2.0
            _ -> 1.0
          end

        :fairy ->
          case type_def do
            :dark -> 2.0
            :dragon -> 2.0
            :fighting -> 2.0
            :fire -> 0.5
            :poison -> 0.5
            :steel -> 0.5
            _ -> 1.0
          end

        :fighting ->
          case type_def do
            :bug -> 0.5
            :dark -> 2.0
            :fairy -> 0.5
            :flying -> 0.5
            :ghost -> 0.0
            :ice -> 2.0
            :normal -> 2.0
            :poison -> 0.5
            :psychic -> 0.5
            :rock -> 2.0
            :steel -> 2.0
            _ -> 1.0
          end

        :fire ->
          case type_def do
            :bug -> 2.0
            :dragon -> 0.5
            :fire -> 0.5
            :grass -> 2.0
            :ice -> 2.0
            :rock -> 0.5
            :steel -> 2.0
            :water -> 0.5
            _ -> 1.0
          end

        :flying ->
          case type_def do
            :bug -> 2.0
            :electric -> 0.5
            :fighting -> 2.0
            :grass -> 2.0
            :rock -> 0.5
            :steel -> 0.5
            _ -> 1.0
          end

        :ghost ->
          case type_def do
            :dark -> 0.5
            :ghost -> 2.0
            :normal -> 0.0
            :psychic when gen >= 2 -> 2.0
            :psychic -> 0.0
            :steel when gen <= 5 -> 0.5
            _ -> 1.0
          end

        :grass ->
          case type_def do
            :bug -> 0.5
            :dragon -> 0.5
            :fire -> 0.5
            :flying -> 0.5
            :grass -> 0.5
            :ground -> 2.0
            :poison -> 0.5
            :rock -> 2.0
            :steel -> 0.5
            :water -> 2.0
            _ -> 1.0
          end

        :ground ->
          case type_def do
            :bug -> 0.5
            :electric -> 2.0
            :fire -> 2.0
            :flying -> 0.0
            :grass -> 0.5
            :poison -> 2.0
            :rock -> 2.0
            :steel -> 2.0
            _ -> 1.0
          end

        :ice ->
          case type_def do
            :dragon -> 2.0
            :fire when gen >= 2 -> 0.5
            :flying -> 2.0
            :grass -> 2.0
            :ground -> 2.0
            :ice -> 0.5
            :steel -> 0.5
            :water -> 0.5
            _ -> 1.0
          end

        :normal ->
          case type_def do
            :ghost -> 0.0
            :rock -> 0.5
            :steel -> 0.5
            _ -> 1.0
          end

        :poison ->
          case type_def do
            :bug when gen <= 1 -> 2.0
            :fairy -> 2.0
            :ghost -> 0.5
            :grass -> 2.0
            :ground -> 0.5
            :poison -> 0.5
            :rock -> 0.5
            :steel -> 0.0
            _ -> 1.0
          end

        :psychic ->
          case type_def do
            :dark -> 0.0
            :fighting -> 2.0
            :poison -> 2.0
            :psychic -> 0.5
            :steel -> 0.5
            _ -> 1.0
          end

        :rock ->
          case type_def do
            :bug -> 2.0
            :fighting -> 0.5
            :fire -> 2.0
            :flying -> 2.0
            :ground -> 0.5
            :ice -> 2.0
            :steel -> 0.5
            _ -> 1.0
          end

        :steel ->
          case type_def do
            :electric -> 0.5
            :fairy -> 2.0
            :fire -> 0.5
            :ice -> 2.0
            :rock -> 2.0
            :steel -> 0.5
            :water -> 0.5
            _ -> 1.0
          end

        :water ->
          case type_def do
            :dragon -> 0.5
            :fire -> 2.0
            :grass -> 0.5
            :ground -> 2.0
            :rock -> 2.0
            :water -> 0.5
            _ -> 1.0
          end
      end
    end
  end

  @spec exists?(type, integer) :: boolean
  defp exists?(type, gen) do
    case type do
      :bug -> true
      :dark when gen >= 2 -> true
      :dragon -> true
      :electric -> true
      :fairy when gen >= 6 -> true
      :fighting -> true
      :fire -> true
      :flying -> true
      :ghost -> true
      :grass -> true
      :ground -> true
      :ice -> true
      :normal -> true
      :poison -> true
      :psychic -> true
      :rock -> true
      :steel when gen >= 2 -> true
      :water -> true
      _ -> false
    end
  end
end
