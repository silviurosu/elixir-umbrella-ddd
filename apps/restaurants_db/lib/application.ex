defmodule RestaurantsDb.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
       supervisor(RestaurantsDb.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: RestaurantsDb.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
