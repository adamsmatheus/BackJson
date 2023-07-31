defmodule BackJson.Repo do
  use Ecto.Repo,
    otp_app: :back_json,
    adapter: Ecto.Adapters.Postgres
end
