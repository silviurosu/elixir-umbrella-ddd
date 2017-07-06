defmodule Service.CreateCart do
  @moduledoc """
  Create cart Service
  """

  alias Service.BO.Cart

  @doc """
  Create shopping cart
  Validates that we have a restaurant and user with ids specified
  """
  @spec create(integer, integer) :: {:ok, Cart.t} | {:error, String.t}
  def create(restaurant_id, user_id) when is_integer(restaurant_id) and is_integer(user_id) do
    with {:ok, _restaurant} <- RestaurantsDb.load_restaurant(restaurant_id),
         {:ok, _user} <- UsersDb.load_user(user_id),
    do: do_create(restaurant_id, user_id)
  end

  defp do_create(restaurant_id, user_id) do
    case ShoppingDb.create_cart(restaurant_id, user_id) do
      {:ok, cart} -> {:ok, convert(cart)}
      {:error, message} -> {:error, message}
    end
  end

  defp convert(cart) do
    %Cart{
      uuid: cart.uuid,
      restaurant_id: cart.restaurant_id,
      user_id: cart.user_id
    }
  end
end
