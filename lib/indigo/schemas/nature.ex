defmodule Indigo.Schema.Nature do
  use Ecto.Schema
  import Ecto.Changeset

  schema "natures" do
    field :dec, :string
    field :inc, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(nature, attrs) do
    nature
    |> cast(attrs, [:name, :inc, :dec])
    |> validate_required([:name, :inc, :dec])
  end
end
