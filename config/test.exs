import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :indigo, Indigo.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "indigo_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :indigo, IndigoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "TgSfMy42ckttdBGtXVYzF1+Bh9mkOTs1pjRlrLPjfJG6qDBvFLQpFl1dzIXwuz5B",
  server: false

# In test we don't send emails.
config :indigo, Indigo.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
