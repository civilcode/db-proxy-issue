defmodule DbProxyBug.Repo.Migrations.CreateWeather do
  use Ecto.Migration

  def change do
    create table(:weathers) do
      add :city, :string
      add :temp_lo, :integer
      add :temp_hi, :integer
      add :prcp, :decimal

      timestamps
    end
  end
end
