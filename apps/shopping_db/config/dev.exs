use Mix.Config

# Configure your database
config :shopping_db, ShoppingDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "shopping_db_dev",
  hostname: "localhost",
  pool_size: 10
