# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :challenge_phoenix,
  ecto_repos: [ChallengePhoenix.Repo]

# Configures the endpoint
config :challenge_phoenix, ChallengePhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gQJjdK6nHTgJuMzs2/pWrNzgwWPkD3sHS0hbjrjvU/SgNjGZFLofIUD5SWAAqsQR",
  render_errors: [view: ChallengePhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChallengePhoenix.PubSub,
  live_view: [signing_salt: "bSnSaPG6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
