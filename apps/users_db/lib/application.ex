defmodule UsersDb.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
       supervisor(UsersDb.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: UsersDb.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
