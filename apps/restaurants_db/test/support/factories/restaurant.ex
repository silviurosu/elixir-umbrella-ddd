defmodule RestaurantsDb.Factories.Restaurant do
  @moduledoc """
  Factories for restaurant
  """

  use ExMachina.Ecto, repo: RestaurantsDb.Repo

  alias RestaurantsDb.Models.Restaurant
  alias RestaurantsDb.Models.Menu
  alias RestaurantsDb.Models.Item

  def restaurant_factory do
    %Restaurant {
      name: "Demo Restaurant",
      menus: [
        build(:menu)
      ]
    }
  end

  def menu_factory do
    %Menu {
      name: "Dinner",
      items: [
        build(:pizza),
        build(:pasta)
      ]
    }
  end

  def pizza_factory do
    %Item{
      name: "Pizza",
      price: 100
    }
  end

  def pasta_factory do
    %Item{
      name: "Pasta",
      price: 200
    }
  end
end
