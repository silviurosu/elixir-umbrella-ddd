defmodule UsersDbBehaviour.LoadUserBehaviour do
  @moduledoc false

  alias UsersDbBehaviour.UserBO

  @callback load(integer) :: {:ok, UserBO.t} | {:error, String.t}
end
