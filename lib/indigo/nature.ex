defmodule Indigo.Nature do
  alias Indigo.Nature, as: Nature
  alias Indigo.Stat, as: Stat

  @enforce_keys [:name]
  @derive {Jason.Encoder, only: [:name, :inc, :dec]}
  defstruct [:name, :inc, :dec]

  @type t :: %__MODULE__{
          name: String.t(),
          inc: nil | Stat.stat(),
          dec: nil | Stat.stat()
        }

  @spec list :: [t, ...]
  def list() do
    [
      %Nature{name: "bashful"},
      %Nature{name: "brave", inc: :atk, dec: :spd}
    ]
  end

  @spec get(String.t()) :: nil | t
  def get(name) do
    case name do
      "bashful" -> %Nature{name: "bashful"}
      "brave" -> %Nature{name: "brave", inc: :atk, dec: :spd}
      _ -> nil
    end
  end
end
