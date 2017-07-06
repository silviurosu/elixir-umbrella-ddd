defmodule ShoppingDb.Repo.Migrations.CreateShoppingCartsTable do
  use Ecto.Migration

  def change do
    create table(:shopping_carts) do
      add :uuid, :string, null: false
      add :restaurant_id, :integer, null: false
      add :user_id, :integer, null: false

      timestamps()
    end
  end
end
