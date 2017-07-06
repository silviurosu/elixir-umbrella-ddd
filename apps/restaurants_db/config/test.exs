use Mix.Config

config :logger, level: :debug

# Configure your database
config :restaurants_db, RestaurantsDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "restaurants_db_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
