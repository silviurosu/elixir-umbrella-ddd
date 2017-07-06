defmodule UsersDb.LoadUser.DbGateway do
  @moduledoc """
  DB gateway to load user from database
  """
  @behaviour UsersDbBehaviour.LoadUserBehaviour

  alias UsersDbBehaviour.UserBO
  alias UsersDb.Models.User
  alias UsersDb.Repo

  @doc """
    Load user by id
  """
  @spec load(integer) :: {:ok, UserBO.t} | {:error, String.t}
  def load(user_id) when is_integer(user_id) do
    user_id
    |> load_user
    |> convert
  end

  defp load_user(user_id) do
    Repo.get(User, user_id)
  end

  defp convert(nil), do: {:error, "User not found"}
  defp convert(user) do
    user_bo = %UserBO {
      id: user.id,
      name: user.name
    }
    {:ok, user_bo}
  end
end
