defmodule WillYouBeThere.SampleTest do
  use WillYouBeThere.ConnCase

  # Import Hound helpers
  use Hound.Helpers

  # Start a Hound session
  hound_session

  test "GET /teams" do
    # Given a team and a user
    team = create(:team)
    user = create(:user)

    navigate_to "/teams/#{team.id}"
    IO.puts Hound.Helpers.Page.page_html()
    # add the user to the team as a member

    # then add a game

    # Run an attendance check manually
    # Timecop?

    # add a game
    # add a player
    #navigate_to "/teams"
    #IO.puts current_path
    assert page_title() == "Thank you"
  end
end
