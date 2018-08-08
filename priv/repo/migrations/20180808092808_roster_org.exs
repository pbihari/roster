defmodule RosterApp.Repo.Migrations.RosterOrg do
  use Ecto.Migration

  def change do

    alter table(:rosters) do
      add :organisation_id, references(:organisations, on_delete: :nothing), null: false
    end

  end
end
