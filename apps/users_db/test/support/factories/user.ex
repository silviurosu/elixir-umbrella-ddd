defmodule UsersDb.Factories.User do
  @moduledoc """
  Factories for user
  """

  use ExMachina.Ecto, repo: UsersDb.Repo

  alias UsersDb.Models.User

  def user_factory do
    %User {
      name: "Silviu Rosu"
    }
  end
end
