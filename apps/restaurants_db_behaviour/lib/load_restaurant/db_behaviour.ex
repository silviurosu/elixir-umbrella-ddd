defmodule RestaurantsDbBehaviour.LoadRestaurantBehaviour do
  @moduledoc false

  alias RestaurantsDbBehaviour.RestaurantBO

  @callback load(integer) :: {:ok, RestaurantBO} | {:error, String.t}
end
