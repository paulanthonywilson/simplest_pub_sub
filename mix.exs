defmodule SimplestPubSub.MixProject do
  use Mix.Project

  def project do
    [
      app: :simplest_pub_sub,
      version: "0.1.0",
      elixir: "~> 1.13",
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {SimplestPubSub.Application, []}
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test]},
      {:dialyxir, "~> 1.2", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.29.1", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [main: "readme", extras: ["README.md"]]
  end

  defp package() do
    [
      description: "Arguably pointessly thin wrapper over Registry for a simple Pub Sub",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/paulanthonywilson/simplest_pub_sub/"}
    ]
  end
end
