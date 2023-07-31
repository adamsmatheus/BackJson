defmodule BackJsonWeb.FallbackController do
    use BackJsonWeb, :controller
   
    def call(conn, {:error, changeset}) do
        conn
        |> put_status(:not_found)
        |> put_view(json: BackJsonWeb.ErrorJSON)
        |> render(:error, status: :not_found)
    end

    def call(conn, {:error, changeset}) do
      conn
      |> put_status(:created)
      |> put_view(json: BackJsonWeb.ErrorJSON)
      |> render(:error, changeset: changeset)
    end
end
  