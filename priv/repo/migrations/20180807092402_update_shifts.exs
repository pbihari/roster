defmodule RosterApp.Repo.Migrations.UpdateShifts do
  use Ecto.Migration

  def change do
    alter table(:shifts) do
      add :roster_id, references(:rosters, on_delete: :nothing), null: false
    end

  end
end
