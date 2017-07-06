use Mix.Config

# Configure your database
config :users_db, UsersDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "users_db_dev",
  hostname: "localhost",
  pool_size: 10
