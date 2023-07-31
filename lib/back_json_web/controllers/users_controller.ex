defmodule BackJsonWeb.UsersController do
    use BackJsonWeb, :controller
    alias BackJson.Users
    alias Users.User
    
    action_fallback BackJsonWeb.FallbackController

    def create(conn, params) do
      with {:ok, %User{} = user} <- Users.create(params) do
      conn
      |> put_status(:created)
      |> render(:create, user: user)
      end
    end

    def delete(conn, %{"id" => id}) do
      with {:ok, %User{} = user} <- Users.delete(id) do
      conn
      |> put_status(:ok)
      |> render(:delete, user: user)
      end
    end

    def show(conn, %{"id" => id}) do
      with {:ok, %User{} = user} <- Users.get(id) do
      conn
      |> put_status(:ok)
      |> render(:get, user: user)
      end
    end

    def update(conn, params) do
      IO.inspect(params)
      with {:ok, %User{} = user} <- Users.update(params) do
      conn
      |> put_status(:ok)
      |> render(:update, user: user)
      end
    end

    defp handle_response({:error, changeset} = error, conn) do
      conn
      |> put_status(:created)
      |> put_view(json: BackJsonWeb.ErrorJSON)
      |> render(:error, changeset: changeset)
    end
end
  