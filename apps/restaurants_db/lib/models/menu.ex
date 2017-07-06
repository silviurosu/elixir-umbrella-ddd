defmodule RestaurantsDb.Models.Menu do
  use Ecto.Schema

  alias RestaurantsDb.Models.Restaurant
  alias RestaurantsDb.Models.Item

  schema "menus" do
    field :name, :string

    belongs_to :restaurant, Restaurant
    has_many :items, Item

    timestamps()
  end
end
