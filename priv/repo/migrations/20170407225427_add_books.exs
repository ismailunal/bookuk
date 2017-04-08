defmodule Bookuk.Repo.Migrations.AddBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
    end
  end
end
