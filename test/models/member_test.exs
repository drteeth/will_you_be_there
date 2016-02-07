defmodule WillYouBeThere.MemberTest do
  use WillYouBeThere.ModelCase

  alias WillYouBeThere.Member

  test "changeset with valid attributes" do
    changeset = Member.changeset(%Member{}, attributes_for(:member))
    assert changeset.valid?
  end

  # test "changeset with invalid attributes" do
  #   changeset = Member.changeset(%Member{}, %{})
  #   refute changeset.valid?
  # end

end
