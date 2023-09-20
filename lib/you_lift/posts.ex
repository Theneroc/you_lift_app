defmodule YouLift.Posts do
  @moduledoc """
  The Posts context.
  """

  import Ecto.Query, warn: false
  alias YouLift.Repo

  alias YouLift.Posts.Post

  @doc """
  Returns the list of posts.

  ## Examples

      iex> list_posts()
      [%Post{}, ...]

  """
  def list_posts do
    Repo.all(Post)
  end

  @doc """
  Gets a single post.

  Raises `Ecto.NoResultsError` if the Post does not exist.

  ## Examples

      iex> get_post!(123)
      %Post{}

      iex> get_post!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post!(id), do: Repo.get!(Post, id)

  @doc """
  Creates a post.

  ## Examples

      iex> create_post(%{field: value})
      {:ok, %Post{}}

      iex> create_post(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post(user, attrs \\ %{}) do
    user
    |> Ecto.build_assoc(:posts)
    |> Post.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a post.

  ## Examples

      iex> update_post(post, %{field: new_value})
      {:ok, %Post{}}

      iex> update_post(post, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post(%Post{} = post, attrs) do
    post
    |> Post.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a post.

  ## Examples

      iex> delete_post(post)
      {:ok, %Post{}}

      iex> delete_post(post)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post(%Post{} = post) do
    Repo.delete(post)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post changes.

  ## Examples

      iex> change_post(post)
      %Ecto.Changeset{data: %Post{}}

  """
  def change_post(%Post{} = post, attrs \\ %{}) do
    Post.changeset(post, attrs)
  end

  alias YouLift.Posts.Saved_Post

  @doc """
  Returns the list of saved_posts.

  ## Examples

      iex> list_saved_posts()
      [%Saved_Post{}, ...]

  """
  def list_saved_posts do
    Repo.all(Saved_Post)
  end

  @doc """
  Gets a single saved__post.

  Raises `Ecto.NoResultsError` if the Saved  post does not exist.

  ## Examples

      iex> get_saved__post!(123)
      %Saved_Post{}

      iex> get_saved__post!(456)
      ** (Ecto.NoResultsError)

  """
  def get_saved__post!(id), do: Repo.get!(Saved_Post, id)

  @doc """
  Creates a saved__post.

  ## Examples

      iex> create_saved__post(%{field: value})
      {:ok, %Saved_Post{}}

      iex> create_saved__post(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_saved__post(user, attrs \\ %{}) do
    user
    |> Ecto.build_assoc(:saved_posts)
    |> Saved_Post.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a saved__post.

  ## Examples

      iex> update_saved__post(saved__post, %{field: new_value})
      {:ok, %Saved_Post{}}

      iex> update_saved__post(saved__post, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_saved__post(%Saved_Post{} = saved__post, attrs) do
    saved__post
    |> Saved_Post.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a saved__post.

  ## Examples

      iex> delete_saved__post(saved__post)
      {:ok, %Saved_Post{}}

      iex> delete_saved__post(saved__post)
      {:error, %Ecto.Changeset{}}

  """
  def delete_saved__post(%Saved_Post{} = saved__post) do
    Repo.delete(saved__post)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking saved__post changes.

  ## Examples

      iex> change_saved__post(saved__post)
      %Ecto.Changeset{data: %Saved_Post{}}

  """
  def change_saved__post(%Saved_Post{} = saved__post, attrs \\ %{}) do
    Saved_Post.changeset(saved__post, attrs)
  end
end
