defmodule RestaurantsDb.Models.Item do
  use Ecto.Schema

  alias RestaurantsDb.Models.Menu

  schema "items" do
    field :name, :string
    field :price, :integer

    belongs_to :menu, Menu

    timestamps()
  end
end
