defmodule YouLift.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `YouLift.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        body: "some body"
      })
      |> YouLift.Comments.create_comment()

    comment
  end
end
