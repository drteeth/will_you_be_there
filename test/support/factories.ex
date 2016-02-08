defmodule WillYouBeThere.Factory do
  use ExMachina.Ecto, repo: WillYouBeThere.Repo

  alias WillYouBeThere.{Team, Game, User, Member, Attendance}


  def factory(:team) do
    %Team{
      name: sequence(:name, &"Team #{&1}"),
    }
  end

  def factory(:game) do
    %Game{
      start_time: Ecto.DateTime.utc,
      field: "Field #3",
      team_a: build(:team),
      team_b: build(:team),
    }
  end

  def factory(:user) do
    %User{
      name: "Jane Smith",
      email: sequence(:email, &"email-#{&1}@example.com"),
    }
  end

  def factory(:member) do
    %Member{}
  end

  def factory(:attendance) do
    %Attendance{status: "will_be_there"}
  end

  def attributes_for(model) do
    build(model)
    |> Map.delete(:__struct__)
    |> Map.delete(:__meta__)
    |> Map.delete(:inserted_at)
    |> Map.delete(:updated_at)
  end

end
