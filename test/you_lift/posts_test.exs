defmodule YouLift.PostsTest do
  use YouLift.DataCase

  alias YouLift.Posts

  describe "posts" do
    alias YouLift.Posts.Post

    import YouLift.PostsFixtures

    @invalid_attrs %{lift: nil, likes: nil, weight: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Posts.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Posts.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{lift: "some lift", likes: 42, weight: 120.5}

      assert {:ok, %Post{} = post} = Posts.create_post(valid_attrs)
      assert post.lift == "some lift"
      assert post.likes == 42
      assert post.weight == 120.5
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Posts.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{lift: "some updated lift", likes: 43, weight: 456.7}

      assert {:ok, %Post{} = post} = Posts.update_post(post, update_attrs)
      assert post.lift == "some updated lift"
      assert post.likes == 43
      assert post.weight == 456.7
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Posts.update_post(post, @invalid_attrs)
      assert post == Posts.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Posts.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Posts.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Posts.change_post(post)
    end
  end

  describe "saved_posts" do
    alias YouLift.Posts.Saved_Post

    import YouLift.PostsFixtures

    @invalid_attrs %{}

    test "list_saved_posts/0 returns all saved_posts" do
      saved__post = saved__post_fixture()
      assert Posts.list_saved_posts() == [saved__post]
    end

    test "get_saved__post!/1 returns the saved__post with given id" do
      saved__post = saved__post_fixture()
      assert Posts.get_saved__post!(saved__post.id) == saved__post
    end

    test "create_saved__post/1 with valid data creates a saved__post" do
      valid_attrs = %{}

      assert {:ok, %Saved_Post{} = saved__post} = Posts.create_saved__post(valid_attrs)
    end

    test "create_saved__post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Posts.create_saved__post(@invalid_attrs)
    end

    test "update_saved__post/2 with valid data updates the saved__post" do
      saved__post = saved__post_fixture()
      update_attrs = %{}

      assert {:ok, %Saved_Post{} = saved__post} = Posts.update_saved__post(saved__post, update_attrs)
    end

    test "update_saved__post/2 with invalid data returns error changeset" do
      saved__post = saved__post_fixture()
      assert {:error, %Ecto.Changeset{}} = Posts.update_saved__post(saved__post, @invalid_attrs)
      assert saved__post == Posts.get_saved__post!(saved__post.id)
    end

    test "delete_saved__post/1 deletes the saved__post" do
      saved__post = saved__post_fixture()
      assert {:ok, %Saved_Post{}} = Posts.delete_saved__post(saved__post)
      assert_raise Ecto.NoResultsError, fn -> Posts.get_saved__post!(saved__post.id) end
    end

    test "change_saved__post/1 returns a saved__post changeset" do
      saved__post = saved__post_fixture()
      assert %Ecto.Changeset{} = Posts.change_saved__post(saved__post)
    end
  end
end
