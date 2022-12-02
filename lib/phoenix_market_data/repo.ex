defmodule PhoenixMarketData.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_market_data,
    adapter: Ecto.Adapters.Postgres
end
