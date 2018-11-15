# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirkenya,
  ecto_repos: [Elixirkenya.Repo]

# Configures the endpoint
config :elixirkenya, ElixirkenyaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Le66zF1aNugSUUW7JJ8rqwq8Oz7YGkhAZKgXLR7UDCY6FwWCoa8fP20hr7xEdDS9",
  render_errors: [view: ElixirkenyaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elixirkenya.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
