defmodule YouLift.Profiles.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "profiles" do
    field(:fullname, :string)
    field(:username, :string)
    field(:age, :integer)
    field(:gender, :boolean, default: false)
    field(:weight, :float)
    field(:height, :float)
    field(:biography, :string)
    field(:picture, :string)
    belongs_to(:user, YouLift.Accounts.User)

    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:fullname, :username, :picture, :biography, :age, :weight, :height, :gender])
    |> validate_required([
      :fullname,
      :username,
      :picture,
      :biography,
      :age,
      :weight,
      :height,
      :gender
    ])
  end
end
