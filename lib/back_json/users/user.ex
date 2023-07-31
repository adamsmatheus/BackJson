defmodule BackJson.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  @required_params_create [:name, :password, :email, :cep]
  @required_params_update [:name, :email, :cep]

  schema "users" do
    field :name, :string
    field :password_hash
    field :email, :string
    field :cep, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params_create)
    |> validate_required([:name, :password_hash, :email, :cep])
  end

  def changeset(user, params) do
    user
    |> cast(params, @required_params_update)
    |> validate_required([:name, :password_hash, :email, :cep])
  end
end
