defmodule PhoenixMarketData.Timeline.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :active, :boolean, default: true
    field :content, :string
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:user_id, :content])
    |> validate_required([:user_id, :content])
  end
end
