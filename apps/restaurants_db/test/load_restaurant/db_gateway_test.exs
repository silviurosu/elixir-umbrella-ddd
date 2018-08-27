defmodule RestaurantsDb.LoadRestaurant.DbGatewayTest do
  use RestaurantsDb.ModelCase

  import RestaurantsDb.Factories.Restaurant

  alias RestaurantsDb.LoadRestaurant.DbGateway
  alias RestaurantsDbBehaviour.RestaurantBO

  test "load restaurant by id" do
    r = insert(:restaurant)
    {:ok, %RestaurantBO{} = restaurant} = DbGateway.load(r.id)
    assert restaurant
    assert restaurant.name
  end
end
