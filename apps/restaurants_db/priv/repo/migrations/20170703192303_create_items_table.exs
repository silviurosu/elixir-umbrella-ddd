defmodule RestaurantsDb.Repo.Migrations.CreateItemsTable do
  use Ecto.Migration

  def change do
     create table(:items) do
      add :name, :string
      add :price, :integer
      add :menu_id, references(:menus, on_delete: :nothing)

      timestamps()
    end
    create index(:items, [:menu_id])
  end
end
