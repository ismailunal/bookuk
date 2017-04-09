defmodule Bookuk.Book do
    use Bookuk.Web, :model

    schema "books" do
        field :title, :string
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:title])
        |> validate_required([:title])
    end
end