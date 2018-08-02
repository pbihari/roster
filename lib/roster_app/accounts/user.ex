defmodule RosterApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :display_name, :string
    field :email, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :display_name, :password])
    |> validate_required([:email, :display_name, :password])
    |> validate_format(:email, ~r/.+@.+\..+/, [message: "Please input an email"])
    |> unique_constraint(:email)
  end
end
