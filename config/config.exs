# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bookuk,
  ecto_repos: [Bookuk.Repo]

# Configures the endpoint
config :bookuk, Bookuk.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lYW5ojR+MJ8h9gE1tUJ4YpxyMsxhM5Ws+b0Drwfr1vaiPJC8MriM1HQFALR7i+1C",
  render_errors: [view: Bookuk.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bookuk.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
