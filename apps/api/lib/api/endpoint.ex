defmodule Api.Endpoint do
  use Phoenix.Endpoint, otp_app: :api

  socket("/socket", Api.UserSocket)

  plug(Plug.RequestId)
  plug(Plug.Logger)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["*/*"],
    json_decoder: Poison
  )

  plug(Plug.MethodOverride)
  plug(Plug.Head)

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  plug(Plug.Session,
    store: :cookie,
    key: "_api_key",
    signing_salt: "hNNTO+G/"
  )

  plug(Api.Router)
end
