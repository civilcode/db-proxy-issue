defmodule DbProxyIssue.Weather do
  use Ecto.Schema
  import Ecto.Query
  alias DbProxyIssue.Weather
  alias DbProxyIssue.Repo


  schema "weathers" do
    field :city     # Defaults to type :string
    field :temp_lo, :integer
    field :temp_hi, :integer
    field :prcp,    :float, default: 0.0
  end

  def all do
    Weather
    |> Repo.all
  end
end
