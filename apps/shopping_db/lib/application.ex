defmodule ShoppingDb.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
       supervisor(ShoppingDb.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: ShoppingDb.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
