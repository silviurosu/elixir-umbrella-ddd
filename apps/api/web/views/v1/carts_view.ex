defmodule Api.V1.CartsView do
  @moduledoc false
  use Api.Web, :view

  def render("create.json", %{cart: cart}) do
    cart
  end
end
