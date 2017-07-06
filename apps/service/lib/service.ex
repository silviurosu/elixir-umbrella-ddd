defmodule Service do
  @moduledoc false

  def create_cart(restaurant_id, user_id) do
    Service.CreateCart.create(restaurant_id, user_id)
  end
end
