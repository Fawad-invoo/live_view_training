# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_training,
  ecto_repos: [LiveViewTraining.Repo]

# Configures the endpoint
config :live_view_training, LiveViewTrainingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0ifcp5lr8XQQn7fv2PmE/VrwhRajZwIja9FAnTzLYFcabxCROldw6cY4cXoN45Gg",
  render_errors: [view: LiveViewTrainingWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewTraining.PubSub,
  live_view: [signing_salt: "zu2dasXF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
