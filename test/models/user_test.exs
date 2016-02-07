defmodule WillYouBeThere.UserTest do
  use WillYouBeThere.ModelCase

  alias WillYouBeThere.User

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, attributes_for(:user))
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, %{})
    refute changeset.valid?
  end
end
