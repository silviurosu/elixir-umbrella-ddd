defmodule RestaurantsDb.LoadRestaurant.DbGateway do
  @moduledoc """
  DB gateway for loading restaurant
  """

  @behaviour RestaurantsDbBehaviour.LoadRestaurantBehaviour

  alias RestaurantsDb.Repo
  alias RestaurantsDb.Models.Restaurant
  alias RestaurantsDbBehaviour.RestaurantBO

  @doc """
  Load restaurant by id
  """
  @spec load(integer) :: {:ok, RestaurantBO.t} | {:error, String.t}
  def load(restaurant_id) when is_integer(restaurant_id) do
    restaurant_id
    |> load_restaurant
    |> convert
  end

  defp load_restaurant(restaurant_id) do
    Repo.get(Restaurant, restaurant_id)
  end

  defp convert(nil), do: {:error, "Restaurant not found"}
  defp convert(restaurant) do
    restaurant_bo = %RestaurantBO {
      id: restaurant.id,
      name: restaurant.name
    }
    {:ok, restaurant_bo}
  end
end
