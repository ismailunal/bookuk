defmodule Bookuk.PageController do
  use Bookuk.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
