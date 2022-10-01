defmodule Indigo.Repo.Migrations.CreateNatures do
  use Ecto.Migration

  def change do
    create table(:natures) do
      add :name, :string, primary_key: true, null: false
      add :inc, :stat
      add :dec, :stat

      timestamps()
    end
  end
end
