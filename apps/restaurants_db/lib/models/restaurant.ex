defmodule RestaurantsDb.Models.Restaurant do
  use Ecto.Schema

  schema "restaurants" do
    field :name, :string

    has_many :menus, RestaurantsDb.Models.Menu

    timestamps()
  end
end
