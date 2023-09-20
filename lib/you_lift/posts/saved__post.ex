defmodule YouLift.Posts.Saved_Post do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "saved_posts" do
    belongs_to(:user, YouLift.Accounts.User)
    belongs_to(:post, YouLift.Posts.Post)

    timestamps()
  end

  @doc false
  def changeset(saved__post, attrs) do
    saved__post
    |> cast(attrs, [:user_id, :post_id])
    |> validate_required([:user_id, :post_id])
  end
end
