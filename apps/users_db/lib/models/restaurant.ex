defmodule UsersDb.Models.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string

    timestamps()
  end
end
