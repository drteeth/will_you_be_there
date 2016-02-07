defmodule WillYouBeThere.AttendanceTest do
  use WillYouBeThere.ModelCase

  alias WillYouBeThere.Attendance

  test "changeset with valid attributes" do
    changeset = Attendance.changeset(%Attendance{}, attributes_for(:attendance))
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Attendance.changeset(%Attendance{}, %{})
    refute changeset.valid?
  end
end
