defmodule Service do
  @moduledoc false

  alias Service.CreateCart

  defdelegate create(restaurant_id, user_id), to: CreateCart
end
