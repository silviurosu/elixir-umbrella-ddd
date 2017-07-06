defmodule Api.ServiceMock do
  @moduledoc false

  alias Service.BO.Cart

  def create_cart(restaurant_id, user_id) do
    c = %Cart{
          uuid: "dsfsdfds-fsdfsdf-sfsdfds",
          restaurant_id: restaurant_id,
          user_id: user_id
        }
    {:ok, c}
  end
end
