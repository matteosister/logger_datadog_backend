defmodule LoggerDatadogBackend.Mixfile do
  use Mix.Project

  def project do
    [app: :logger_datadog_backend,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "a datadog backend for ExLogger",
     package: package(),
     docs: docs()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ex_statsd]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_statsd, ">= 0.5.1"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp package do
    [
      maintainers: ["Matteo Giachino"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/matteosister/logger_datadog_backend"}
    ]
  end

  defp docs do
    [
      source_url: "https://github.com/matteosister/logger_datadog_backend",
      extras: ["README.md"]
    ]
  end
end
