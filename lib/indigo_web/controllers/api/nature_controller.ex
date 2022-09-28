defmodule IndigoWeb.Api.NatureController do
  use IndigoWeb, :controller
  alias Indigo.Nature, as: Nature

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    json(conn, Nature.list())
  end

  @spec show(Plug.Conn.t(), %{String.t() => String.t()}) :: Plug.Conn.t()
  def show(conn, %{"id" => name}) do
    json(conn, Nature.get(name))
  end
end
