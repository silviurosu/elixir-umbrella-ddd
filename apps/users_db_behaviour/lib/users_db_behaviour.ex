defmodule UsersDbBehaviour do
  @moduledoc """
  Behaviour specifications for UsersDbBehaviour.
  """

  alias UsersDbBehaviour.UserBO

  @callback load_user(integer) :: {:ok, UserBO.t} | {:error, String.t}
end
