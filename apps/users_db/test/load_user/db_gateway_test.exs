defmodule UsersDb.LoadUser.DbGatewayTest do
  @moduledoc false

  use UsersDb.ModelCase

  import UsersDb.Factories.User

  alias UsersDb.LoadUser.DbGateway
  alias UsersDbBehaviour.UserBO

  test "load user by id" do
    r = insert(:user)
    {:ok, %UserBO{} = user} = DbGateway.load(r.id)
    assert user
    assert user.name
  end
end
