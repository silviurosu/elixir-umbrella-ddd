use Mix.Config

config :restaurants_db,
  ecto_repos: [RestaurantsDb.Repo]

import_config "#{Mix.env}.exs"
