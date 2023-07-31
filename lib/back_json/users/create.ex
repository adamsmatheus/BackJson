 defmodule BackJson.Users.Create do
  alias BackJson.Users.User
  alias BackJson.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
