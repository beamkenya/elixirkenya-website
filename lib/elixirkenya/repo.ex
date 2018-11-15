defmodule Elixirkenya.Repo do
  use Ecto.Repo,
    otp_app: :elixirkenya,
    adapter: Ecto.Adapters.Postgres
end
