use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :will_you_be_there2, WillYouBeThere2.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :will_you_be_there2, WillYouBeThere2.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ben",
  # password: "postgres",
  database: "will_you_be_there2_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
