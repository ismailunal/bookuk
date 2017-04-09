defmodule Bookuk.BookController do
    use Bookuk.Web, :controller
    
    alias Bookuk.Book

    def new(conn, params) do
        changeset = Book.changeset(%Book{}, %{})

        render conn, "new.html", changeset: changeset
    end

    def create(conn, params) do
        
    end
end