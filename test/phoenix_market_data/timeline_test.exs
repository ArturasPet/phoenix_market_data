defmodule PhoenixMarketData.TimelineTest do
  use PhoenixMarketData.DataCase

  alias PhoenixMarketData.Timeline

  describe "post" do
    alias PhoenixMarketData.Timeline.Post

    import PhoenixMarketData.TimelineFixtures

    @invalid_attrs %{active: nil, content: nil, user_id: nil}

    test "list_post/0 returns all post" do
      post = post_fixture()
      assert Timeline.list_post() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Timeline.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{active: true, content: "some content", user_id: "some user_id"}

      assert {:ok, %Post{} = post} = Timeline.create_post(valid_attrs)
      assert post.active == true
      assert post.content == "some content"
      assert post.user_id == "some user_id"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Timeline.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{active: false, content: "some updated content", user_id: "some updated user_id"}

      assert {:ok, %Post{} = post} = Timeline.update_post(post, update_attrs)
      assert post.active == false
      assert post.content == "some updated content"
      assert post.user_id == "some updated user_id"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Timeline.update_post(post, @invalid_attrs)
      assert post == Timeline.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Timeline.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Timeline.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Timeline.change_post(post)
    end
  end
end
