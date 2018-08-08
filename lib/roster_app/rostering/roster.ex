defmodule RosterApp.Rostering.Roster do
  use Ecto.Schema
  import Ecto.Changeset


  schema "rosters" do
    field :name, :string
    belongs_to :organisation, RosterApp.Organisations.Organisation

    timestamps()
  end

  @doc false
  def changeset(roster, attrs) do
    roster
    |> cast(attrs, [:name, :organisation_id])
    |> validate_required([:name, :organisation_id])
  end
end
