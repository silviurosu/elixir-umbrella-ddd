use Mix.Config

config :logger, level: :debug

# Configure your database
config :users_db, UsersDb.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "users_db_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
