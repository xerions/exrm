docs_task = "tasks/docs.exs"
if File.exists?(docs_task) do
  Code.eval_file "tasks/docs.exs"
end

defmodule ReleaseManager.Mixfile do
  use Mix.Project

  def project do
    [ app: :exrm,
      version: "1.0.0",
      elixir: ">= 1.0.0",
      description: description,
      package: package,
      deps: deps ]
  end

  def application, do: []

  defp deps do
    [{:conform, "~> 0.12.0"},
     {:relx, github: "erlware/relx"}]
  end

  defp description do
    """
    Exrm, or Elixir Release Manager, provides mix tasks for building, 
    upgrading, and controlling release packages for your application.
    """
  end

  defp package do
    [ files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"],
      contributors: ["Paul Schoenfelder"],
      licenses: ["MIT"],
      links: %{ "GitHub": "https://github.com/bitwalker/exrm" } ]
  end

end
