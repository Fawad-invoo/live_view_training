defmodule LiveViewTraining.Repo do
  use Ecto.Repo,
    otp_app: :live_view_training,
    adapter: Ecto.Adapters.Postgres
end
