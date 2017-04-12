defmodule Bookuk.BookController do
    use Bookuk.Web, :controller
    
    alias Bookuk.Book

    def new(conn, _params) do
        changeset = Book.changeset(%Book{}, %{})

        render conn, "new.html", changeset: changeset
    end

    def create(conn, %{"book" => book}) do
        changeset = Book.changeset(%Book{}, book)

        case Repo.insert(changeset) do
            {:ok, _book} ->
                conn
                |> put_flash(:info, "Book Created")
                |> redirect(to: book_path(conn, :index))
            {:error, changeset} ->
                render conn, "new.html", changeset: changeset
        end
     
    end
end