defmodule ShoppingDbBehaviour.CreateCart.DbGatewayBehaviour do
  @moduledoc """
    Behaviour specifications for create shopping cart gateway
  """
  alias ShoppingDbBehaviour.CreateCart.BO.ShoppingCart

  @callback create(integer, integer) :: {:ok, ShoppingCart.t} | {:error, String.t}
end
