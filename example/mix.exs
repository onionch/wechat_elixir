defmodule Router.Mixfile do
  use Mix.Project

  def project do
    [
      app: :router,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.0"},
      # {:wechat, "~> 0.3.0"}
      {:wechat, path: "/Users/suyejun/git/wechat-elixir"}
    ]
  end
end