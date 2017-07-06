use Mix.Config

config :shopping_db,
  ecto_repos: [ShoppingDb.Repo]

import_config "#{Mix.env}.exs"
