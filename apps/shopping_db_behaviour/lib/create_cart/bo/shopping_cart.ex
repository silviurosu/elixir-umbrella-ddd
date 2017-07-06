defmodule ShoppingDbBehaviour.CreateCart.BO.ShoppingCart do
  @moduledoc """
  Business Object for Shopping Cart
  """
  defstruct [:id, :uuid, :restaurant_id, :user_id]

  @type t :: %__MODULE__{
    id: integer,
    uuid: String.t,
    restaurant_id: integer,
    user_id: integer
  }
end
