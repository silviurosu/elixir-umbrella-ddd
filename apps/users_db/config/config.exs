use Mix.Config

config :users_db,
  ecto_repos: [UsersDb.Repo]

import_config "#{Mix.env}.exs"
