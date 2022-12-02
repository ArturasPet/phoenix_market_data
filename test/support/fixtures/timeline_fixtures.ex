defmodule PhoenixMarketData.TimelineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixMarketData.Timeline` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        active: true,
        content: "some content",
        user_id: "some user_id"
      })
      |> PhoenixMarketData.Timeline.create_post()

    post
  end
end
