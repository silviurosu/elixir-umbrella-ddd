defmodule Api.V1.CartsControllerTest do
  use Api.ConnCase

  setup do
    conn = build_conn()
           |> put_req_header("accept", "application/json")
           |> put_req_header("content-type", "application/json")

    {:ok, conn: conn}
  end

  test "create new cart", %{conn: conn} do
    body = %{
      restaurant_id: 1,
      user_id: 1
    }
    conn = post(conn, v1_carts_path(conn, :create), Poison.encode!(body))
    cart = json_response(conn, 200)
    assert cart["uuid"]
    assert cart["restaurant_id"]
    assert cart["user_id"]
  end
end
