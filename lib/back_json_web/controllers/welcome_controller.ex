defmodule BackJsonWeb.WelcomeController do
  use BackJsonWeb, :controller

  def index(conn,_params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Bem Vindo", status: :ok})
  end
end
