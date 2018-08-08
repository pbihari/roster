defmodule RosterApp.Organisations.Organisation do
  use Ecto.Schema
  import Ecto.Changeset


  schema "organisations" do
    field :name, :string
    many_to_many :user, RosterApp.Accounts.User, join_through: RosterApp.Organisations.OrganisationUser

    timestamps()
  end

  @doc false
  def changeset(organisation, attrs) do
    organisation
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
