defmodule ShoppingDb.CreateCart.DbGateway do
  @moduledoc """
  DB gateway for creating a shopping cart
  """

  @behaviour ShoppingDbBehaviour.CreateCart.DbGatewayBehaviour

  alias ShoppingDb.Repo
  alias ShoppingDb.Models.ShoppingCart
  alias ShoppingDbBehaviour.CreateCart.BO.ShoppingCart, as: ShoppingCartBO

  @doc """
  Load restaurant by id
  """
  @spec create(integer, integer) :: {:ok, ShoppingCart.t} | {:error, String.t}
  def create(restaurant_id, user_id) when is_integer(restaurant_id) and is_integer(user_id) do
    cart = %ShoppingCart {
      uuid: UUID.uuid1(),
      restaurant_id: restaurant_id,
      user_id: user_id
    }

    case Repo.insert(cart) do
      {:ok, c} -> {:ok, convert(c)}
      {:error, _} -> {:error, "Can not create cart"}
    end
  end

  defp convert(c) do
    %ShoppingCartBO {
      id: c.id,
      uuid: c.uuid,
      restaurant_id: c.restaurant_id,
      user_id: c.user_id
    }
  end
end
