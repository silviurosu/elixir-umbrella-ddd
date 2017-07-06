defmodule RestaurantsDbBehaviour do
  @moduledoc """
  Behaviour specifications for RestaurantsDbBehaviour.
  """
  alias RestaurantsDbBehaviour.RestaurantBO

  @callback load_restaurant(integer) :: {:ok, RestaurantBO.t} | {:error, String.t}
end
