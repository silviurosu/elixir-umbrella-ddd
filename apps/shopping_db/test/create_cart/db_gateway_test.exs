defmodule ShoppingDb.CreateCart.DbGatewayTest do
  @moduledoc false

  use ShoppingDb.ModelCase

  alias ShoppingDb.CreateCart.DbGateway

  alias RestaurantsDbBehaviour.RestaurantBO
  alias ShoppingDbBehaviour.CreateCart.BO.ShoppingCart, as: ShoppingCartBO

  test "create_cart" do
    {:ok, %ShoppingCartBO{} = cart} = DbGateway.create(1, 1)
    assert cart
    assert cart.id
    assert cart.uuid
    assert cart.restaurant_id
    assert cart.user_id
  end
end
