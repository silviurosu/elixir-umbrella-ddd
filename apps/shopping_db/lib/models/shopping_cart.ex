defmodule ShoppingDb.Models.ShoppingCart do
  use Ecto.Schema

  schema "shopping_carts" do
    field :uuid, :string
    field :restaurant_id, :integer
    field :user_id, :integer

    timestamps()
  end
end
