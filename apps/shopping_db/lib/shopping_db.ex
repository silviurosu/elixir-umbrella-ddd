defmodule ShoppingDb do
  @moduledoc false

  @behaviour ShoppingDbBehaviour

  def create_cart(restaurant_id, user_id) do
    ShoppingDb.CreateCart.DbGateway.create(restaurant_id, user_id)
  end
end
