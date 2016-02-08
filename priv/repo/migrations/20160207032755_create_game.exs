defmodule WillYouBeThere.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :start_time, :datetime
      add :field, :string
      add :home_id, references(:teams, on_delete: :nilify_all, type: :binary_id)
      add :visitor_id, references(:teams, on_delete: :nilify_all, type: :binary_id)

      timestamps
    end
    create index(:games, [:home_id])
    create index(:games, [:visitor_id])

  end
end
