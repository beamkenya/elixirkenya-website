defmodule ElixirkenyaWeb.PageController do
  use ElixirkenyaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
