defmodule Indigo.Model.Nature do
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
      %__MODULE__{name: "bashful"},
      %__MODULE__{name: "brave", inc: :atk, dec: :spd}
    ]
  end

  @spec get(String.t()) :: nil | t
  def get(name) do
    case name do
      "bashful" -> %__MODULE__{name: "bashful"}
      "brave" -> %__MODULE__{name: "brave", inc: :atk, dec: :spd}
      _ -> nil
    end
  end

  @spec load() :: %{String.t() => t()}
  def load do
    %{
      "bashful" => %__MODULE__{name: "bashful"},
      "brave" => %__MODULE__{name: "brave", inc: :atk, dec: :spd}
    }
  end

  defimpl Indigo.Model do
    @spec id(Nature.t()) :: String.t()
    def id(nature) do
      nature.name
    end
  end
end
