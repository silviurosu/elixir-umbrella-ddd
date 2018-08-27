defmodule Api.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :api,
      version: @version,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Api, []}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_), do: ["lib", "web"]

  defp deps do
    [
      {:phoenix, "~> 1.2.4"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_html, "~> 2.6"},
      {:plug, "~>1.3.5", override: true},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:service, in_umbrella: true},
      {:mox, ">= 0.3.2", only: :test},
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:ex_unit_notifier, "~> 0.1", only: :test}
    ]
  end
end
