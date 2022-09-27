defmodule IndigoWeb.PageController do
  use IndigoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
