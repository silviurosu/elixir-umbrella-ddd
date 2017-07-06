defmodule Service.BO.Cart do
  @moduledoc """
  Cart BO
  """
  defstruct [:uuid, :restaurant_id, :user_id]

  @type t :: %__MODULE__{
    uuid: String.t,
    restaurant_id: integer,
    user_id: integer
  }
end
