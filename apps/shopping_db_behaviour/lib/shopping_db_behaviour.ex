defmodule ShoppingDbBehaviour do
  @moduledoc """
  Behaviour specifications for ShoppingDb.
  """

  alias ShoppingDbBehaviour.CreateCart.BO.ShoppingCart

  @callback create_cart(integer, integer) :: {:ok, ShoppingCart.t} | {:error, String.t}
end
