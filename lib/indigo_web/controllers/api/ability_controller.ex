defmodule IndigoWeb.Api.AbilityController do
  use IndigoWeb, :controller
  alias Indigo.Ability, as: Ability

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    json(conn, Ability.list())
  end

  @spec show(Plug.Conn.t(), %{String.t() => String.t()}) :: Plug.Conn.t()
  def show(conn, %{"id" => name}) do
    json(conn, Ability.get(name))
  end
end
