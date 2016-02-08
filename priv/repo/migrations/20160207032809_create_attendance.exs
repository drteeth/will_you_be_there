defmodule WillYouBeThere.Repo.Migrations.CreateAttendance do
  use Ecto.Migration

  def change do
    create table(:attendance, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :status, :string
      add :game_id, references(:games, on_delete: :nothing, type: :binary_id)
      add :member_id, references(:members, on_delete: :nothing, type: :binary_id)

      timestamps
    end
    create index(:attendance, [:game_id])
    create index(:attendance, [:member_id])

  end
end
