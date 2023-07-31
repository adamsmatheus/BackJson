defmodule BackJson.Users.Delete do
    alias BackJson.Users.User
    alias BackJson.Repo
  
    def call(id) do
      case Repo.get(User, id) do
      nil -> {:error, :not_found}
      user -> Repo.delete(user)
      end
    end   
end
  