defmodule IndigoWeb.Api.SpeciesController do
  use IndigoWeb, :controller
  alias Indigo.Species, as: Species

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    json(conn, Species.list())
  end

  @spec show(Plug.Conn.t(), %{String.t() => String.t()}) :: Plug.Conn.t()
  def show(conn, %{"id" => number}) do
    json(conn, Species.get(number))
  end
end
