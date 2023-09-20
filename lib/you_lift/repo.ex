defmodule YouLift.Repo do
  use Ecto.Repo,
    otp_app: :you_lift,
    adapter: Ecto.Adapters.Postgres
end
