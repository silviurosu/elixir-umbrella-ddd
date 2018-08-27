defmodule Service.CreateCart do
  @moduledoc """
  Create cart Service
  """

  alias Service.BO.Cart, as: CartBO

  @doc """
  Create shopping cart
  Validates that we have a restaurant and user with ids specified
  """
  @spec create(integer, integer) :: {:ok, Cart.t()} | {:error, String.t()}
  def create(restaurant_id, user_id) when is_integer(restaurant_id) and is_integer(user_id) do
    with {:ok, _restaurant} <- restaurants_db().load_restaurant(restaurant_id),
         {:ok, _user} <- users_db().load_user(user_id),
         do: do_create(restaurant_id, user_id)
  end

  defp do_create(restaurant_id, user_id) do
    case shopping_db().create_cart(restaurant_id, user_id) do
      {:ok, cart} -> {:ok, convert(cart)}
      {:error, message} -> {:error, message}
    end
  end

  defp convert(cart) do
    %CartBO{
      uuid: cart.uuid,
      restaurant_id: cart.restaurant_id,
      user_id: cart.user_id
    }
  end

  defp restaurants_db, do: Application.get_env(:service, :restaurants_db)
  defp users_db, do: Application.get_env(:service, :users_db)
  defp shopping_db, do: Application.get_env(:service, :shopping_db)
end
