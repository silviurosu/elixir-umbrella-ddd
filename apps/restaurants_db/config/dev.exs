use Mix.Config

# Configure your database
config :restaurants_db, RestaurantsDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "restaurants_db_dev",
  hostname: "localhost",
  pool_size: 10
