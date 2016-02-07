defmodule WillYouBeThere.TeamTest do
  use WillYouBeThere.ModelCase

  alias WillYouBeThere.Team

  test "changeset with valid attributes" do
    changeset = Team.changeset(%Team{}, attributes_for(:team))
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Team.changeset(%Team{}, %{})
    refute changeset.valid?
  end
end
