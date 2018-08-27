defmodule Api.Router do
  use Api.Web, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", Api do
    pipe_through(:api)

    scope "/v1", V1, as: :v1 do
      resources("/carts", CartsController, only: [:create, :show])
    end
  end
end
