defmodule RestaurantsDb.Repo.Migrations.CreateMenusTable do
  use Ecto.Migration

  def change do
    create table(:menus) do
      add :name, :string
      add :restaurant_id, references(:restaurants, on_delete: :nothing)

      timestamps()
    end
    create index(:menus, [:restaurant_id])
  end
end
