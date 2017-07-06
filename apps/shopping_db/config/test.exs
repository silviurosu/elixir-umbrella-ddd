use Mix.Config

config :logger, level: :debug

# Configure your database
config :shopping_db, ShoppingDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "shopping_db_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
