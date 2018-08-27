defmodule Api.V1.CartsController do
  @moduledoc false

  use Api.Web, :controller

  alias Api.ErrorView

  def create(conn, %{"restaurant_id" => restaurant_id, "user_id" => user_id}) do
    case service().create_cart(restaurant_id, user_id) do
      {:ok, cart} ->
        render(conn, "create.json", cart: cart)

      {:error, message} ->
        conn
        |> put_status(400)
        |> render(ErrorView, :"400", message: message)
    end
  end

  def create(conn, _) do
    conn
    |> put_status(400)
    |> render(ErrorView, :"400", message: "Required parameters are missing")
  end

  defp service, do: Application.get_env(:api, :carts_service)
end
