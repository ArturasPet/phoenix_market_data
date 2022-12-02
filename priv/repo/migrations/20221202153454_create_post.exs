defmodule PhoenixMarketData.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :user_id, :integer
      add :content, :string
      add :active, :boolean, default: true, null: false

      timestamps()
    end
  end
end
