defmodule WillYouBeThere.Router do
  use WillYouBeThere.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WillYouBeThere do
    pipe_through :browser # Use the default browser stack

    resources "/teams", TeamController
    resources "/games", GameController
    resources "/users", UserController
    resources "/members", MemberController
    resources "/attendance", AttendanceController
  end

  # Other scopes may use custom stacks.
  # scope "/api", WillYouBeThere do
  #   pipe_through :api
  # end
end
