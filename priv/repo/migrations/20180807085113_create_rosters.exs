defmodule RosterApp.Repo.Migrations.CreateRosters do
  use Ecto.Migration

  def change do
    create table(:rosters) do
      add :name, :string, null: false

      timestamps()
    end

  end
end
