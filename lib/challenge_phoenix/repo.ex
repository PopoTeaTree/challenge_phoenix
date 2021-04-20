defmodule ChallengePhoenix.Repo do
  use Ecto.Repo,
    otp_app: :challenge_phoenix,
    adapter: Ecto.Adapters.Postgres
end
