defmodule UsersDb.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :users_db,
      version: @version,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_), do: ["lib", "web"]

  def application do
    [
      mod: {UsersDb.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 2.0"},
      {:users_db_behaviour, in_umbrella: true},
      {:ex_machina, "~> 2.0", only: :test},
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:ex_unit_notifier, "~> 0.1", only: :test}
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
