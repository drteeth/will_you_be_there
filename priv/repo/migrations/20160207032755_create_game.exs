defmodule WillYouBeThere.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :start_time, :datetime
      add :field, :string
      add :team_a_id, references(:teams, on_delete: :nilify_all, type: :binary_id), null: false
      add :team_b_id, references(:teams, on_delete: :nilify_all, type: :binary_id), null: false

      timestamps
    end
    create index(:games, [:team_a_id])
    create index(:games, [:team_b_id])

  end
end
