defmodule YouLift.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "posts" do
    field(:lift, :string)
    field(:likes, :integer)
    field(:weight, :float)
    belongs_to(:user, YouLift.Accounts.User)
    has_many(:comments, YouLift.Comments.Comment)
    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:lift, :weight, :likes, :user_id])
    |> validate_required([:lift, :weight, :likes, :user_id])
  end
end
