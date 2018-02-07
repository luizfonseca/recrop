defmodule Recrop.Mixfile do
  use Mix.Project

  def project do
    [
      app: :recrop,
      version: "0.1.0",
      elixir: "~> 1.5",
      name: "Recrop",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :trot],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:trot, github: "hexedpackets/trot"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
