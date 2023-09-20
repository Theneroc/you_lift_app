defmodule YouLift.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `YouLift.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        lift: "some lift",
        likes: 42,
        weight: 120.5
      })
      |> YouLift.Posts.create_post()

    post
  end

  @doc """
  Generate a saved__post.
  """
  def saved__post_fixture(attrs \\ %{}) do
    {:ok, saved__post} =
      attrs
      |> Enum.into(%{

      })
      |> YouLift.Posts.create_saved__post()

    saved__post
  end
end
