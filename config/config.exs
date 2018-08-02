# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :roster_app,
  ecto_repos: [RosterApp.Repo]

# Configures the endpoint
config :roster_app, RosterAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g/wufWUVL1ctyNEYR4SD5r2gZtIkL4GVPyQYe0Su5pHCf0ZeqUjK2l6pHrP1huYv",
  render_errors: [view: RosterAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RosterApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
