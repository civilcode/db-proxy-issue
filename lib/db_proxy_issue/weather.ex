defmodule DbProxyIssue.Weather do
  use Ecto.Schema
  import Ecto.Query
  alias DbProxyIssue.Weather
  alias DbProxyIssue.Repo


  schema "weathers" do
    field :city     # Defaults to type :string
    field :temp_lo, :integer
    field :temp_hi, :integer
    field :prcp,    :decimal, default: 0.0

    timestamps
  end

  def all do
    Weather
    |> Repo.all
  end

  def record_weather(city, temp_lo, temp_hi) do
    Repo.insert(%Weather{city: city, temp_lo: temp_lo, temp_hi: temp_hi})
  end
end
