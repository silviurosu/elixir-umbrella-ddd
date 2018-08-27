use Mix.Config

config :service,
  restaurants_db: RestaurantsDb,
  users_db: UsersDb,
  shopping_db: ShoppingDb

import_config "#{Mix.env()}.exs"
