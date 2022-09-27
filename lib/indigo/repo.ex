defmodule Indigo.Repo do
  use Ecto.Repo,
    otp_app: :indigo,
    adapter: Ecto.Adapters.Postgres
end
