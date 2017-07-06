defmodule UsersDb do
  @moduledoc false

  @behaviour UsersDbBehaviour

  def load_user(user_id) do
    UsersDb.LoadUser.DbGateway.load(user_id)
  end
end
