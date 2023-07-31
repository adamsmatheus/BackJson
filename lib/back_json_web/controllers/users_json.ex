defmodule BackJsonWeb.UsersJSON do
    alias BackJson.Users.User
    
    def create(%{user: user}) do
        %{
            message: "user criado com sucesso",
            id: user.id,
            cep: user.cep,
            email: user.email
        }
    end 

    def delete(%{user: user}) do
        %{
            message: "user deletado com sucesso",
            
        }
    end 

    def update(%{user: user}) do
        %{
            message: "user atualizado com sucesso",
            
        }
    end 

    def get(%{user: user}) do
        %{
            id: user.id,
            cep: user.cep,
            email: user.email
        }
    end 
end   