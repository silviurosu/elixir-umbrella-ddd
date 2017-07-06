defmodule RestaurantsDb do
  @moduledoc """
  External interface for restaurants App
  """

  @behaviour RestaurantsDbBehaviour

  alias RestaurantsDb.LoadRestaurant.DbGateway
  alias RestaurantsDbBehaviour.RestaurantBO

  @doc """
  Load restaurant by id
  """
  @spec load_restaurant(integer) :: {:ok, RestaurantBO.t} | {:error, String.t}
  def load_restaurant(restaurant_id) do
    DbGateway.load(restaurant_id)
  end
end
