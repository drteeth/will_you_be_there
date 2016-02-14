use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :will_you_be_there, WillYouBeThere.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :will_you_be_there, WillYouBeThere.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ben",
  # password: "postgres",
  database: "will_you_be_there_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
