defmodule WillYouBeThere.GameTest do
  use WillYouBeThere.ModelCase

  alias WillYouBeThere.Game

  test "changeset with valid attributes" do
    changeset = Game.changeset(%Game{}, attributes_for(:game))
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Game.changeset(%Game{}, %{})
    refute changeset.valid?
  end
end
