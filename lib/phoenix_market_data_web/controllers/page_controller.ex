defmodule PhoenixMarketDataWeb.PageController do
  use PhoenixMarketDataWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
