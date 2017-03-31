defmodule DbProxyBug.Mixfile do
  use Mix.Project

  def project do
    [app: :db_proxy_bug,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {DbProxyBug.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      # A database wrapper and language integrated query for Elixir
      {:ecto, "~> 2.1.2", override: true},
      # An Ecto-compatible wrapper around the mysql-otp library
      {:mariaex, "~> 0.8.0", override: true}
    ]
  end
end
