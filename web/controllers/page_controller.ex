defmodule WillYouBeThere2.PageController do
  use WillYouBeThere2.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
